import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/ingredients/malt.dart';

class MaltTable extends StatelessWidget {
  final List<MaltEntity> malt;

  const MaltTable({super.key, required this.malt});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: const Icon(Icons.grain_rounded),
        title: const Text('Malt'),
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
              ],
              rows: <DataRow>[
                for (var item in malt)
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(item.name)),
                      DataCell(Text(item.amount.value.toString())),
                      DataCell(Text(item.amount.unit)),
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
