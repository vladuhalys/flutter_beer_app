import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/hop.dart';

class HopsTable extends StatelessWidget {
  final List<HopEntity> hops;
  const HopsTable({super.key, required this.hops});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: const Icon(Icons.spa_rounded),
        title: const Text('Hops'),
        children: [
          FittedBox(
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Name',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Value',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Unit',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Add',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Attribute',
                  ),
                ),
              ],
              rows: <DataRow>[
                for (var item in hops)
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(item.name)),
                      DataCell(Text(item.amount.value.toString())),
                      DataCell(Text(item.amount.unit)),
                      DataCell(Text(item.add)),
                      DataCell(Text(item.attribute)),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
