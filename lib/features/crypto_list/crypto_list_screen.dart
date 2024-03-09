import 'package:flutter/material.dart';
import 'package:new_gen_project/repositories/phone_number/models/phone_model.dart';
import 'package:new_gen_project/repositories/phone_number/phone_number.dart';

class CryptoCoinsList extends StatefulWidget {
  const CryptoCoinsList({super.key});

  @override
  State<CryptoCoinsList> createState() => _CryptoCoinsListState();
}

class _CryptoCoinsListState extends State<CryptoCoinsList> {
  Future<PhoneDates>? futurePhoneDates;

  @override
  void initState() {
    super.initState();
    futurePhoneDates = PhoneNumberRepository().getPhoneNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Reference'),
      ),
      body: FutureBuilder<PhoneDates>(
        future: futurePhoneDates,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.yellow,
            ));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return _buildListView(context, snapshot.data);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshPhoneNumber,
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView _buildListView(BuildContext context, PhoneDates? data) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 1,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(data?.number ?? 'Loading...',
              style: Theme.of(context).textTheme.labelSmall),
          subtitle: _buildSubtitle(context, data),
        );
      },
    );
  }

  Column _buildSubtitle(BuildContext context, PhoneDates? data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText('Country Name', data?.country_name ?? 'N/A', context),
        SizedBox(height: 20),
        _buildText('Local Format', data?.local_format ?? 'N/A', context),
        SizedBox(height: 20),
        _buildText('International Format', data?.international_format ?? 'N/A',
            context),
        SizedBox(height: 20),
        _buildText('Country Prefix', data?.country_prefix ?? 'N/A', context),
        SizedBox(height: 20),
        _buildText('Country Code', data?.country_code ?? 'N/A', context),
        SizedBox(height: 20),
        _buildText('Carrier', data?.carrier ?? 'N/A', context),
        SizedBox(height: 20),
        _buildText('Line Type', data?.line_type ?? 'N/A', context),
        SizedBox(height: 20),
      ],
    );
  }

  Column _buildText(String title, String data, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }

  void _refreshPhoneNumber() {
    setState(() {
      futurePhoneDates = PhoneNumberRepository().getPhoneNumber();
    });
  }
}
