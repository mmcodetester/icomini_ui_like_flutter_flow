import 'package:flutter/material.dart';

import 'transfer_list.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: Container(
                    constraints: const BoxConstraints(
                      minHeight: 100,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.6),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0))),
                    padding: EdgeInsets.zero,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "History",
                            style: TextStyle(fontSize: 20, letterSpacing: 2.0),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.filter_alt_outlined))
                        ],
                      ),
                    ),
                  ),
                ),
                const TransferList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
