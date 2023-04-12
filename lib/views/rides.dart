import 'package:flutter/material.dart';
import 'package:ynba_api/ynba_api.dart';

class RidesPage extends StatelessWidget {
  final String title;
  final Future<List<Ride>?> rideFuture;

  const RidesPage({super.key, required this.title, required this.rideFuture});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [const Icon(Icons.table_chart), Text(title)],
        ),
      ),
      body: ListView(
        children: [
          FutureBuilder<List<Ride>?>(
              future: rideFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return RideTable(rides: snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text('an error occurred: ${snapshot.error}');
                }
                return const Center(child: CircularProgressIndicator());
              })
        ],
      ),
    );
  }
}

class RideTable extends StatelessWidget {
  final List<Ride> rides;

  const RideTable({super.key, required this.rides});

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
        ],
        rows: rides
            .map((r) => DataRow(cells: [
                  DataCell(Text(r.id ?? '<null>')),
                  DataCell(Text(r.name ?? '<null>'))
                ]))
            .toList());
  }
}
