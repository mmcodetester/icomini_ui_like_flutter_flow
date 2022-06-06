import 'package:flutter/material.dart';
import 'package:flutter_flow_ui/model/transfer_model.dart';

class TransferList extends StatefulWidget {
  const TransferList({Key? key}) : super(key: key);

  @override
  State<TransferList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TransferList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: transferList.length,
          itemBuilder: (context, index) {
            final item = transferList[index];
            return Card(
              child: ListTile(
                leading: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[700],
                        minimumSize: const Size(20, 50)),
                    onPressed: () {},
                    child: item.icon == 'Icons.arrow_upward'
                        ? const Icon(
                            Icons.arrow_upward,
                            color: Colors.red,
                          )
                        : const Icon(Icons.arrow_downward,
                            color: Colors.green)),
                title: Text(item.name!),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(item.date!),
                ),
                trailing: Column(
                  children: [
                    Text(item.transferType!),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        item.ammount!,
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
