import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Transferências'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: const Icon(Icons.add),
    ),
    body: const TransferList(),
  ),
));

class TransferList extends StatelessWidget {
  const TransferList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransferItem(Transfer(1554.00, 44878)),
        TransferItem(Transfer(100.00, 12487)),
        TransferItem(Transfer(854.90, 44878)),
      ],
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;
  const TransferItem(this._transfer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text('valor da transferência: ${_transfer.transferValue}'),
        subtitle: Text('número da conta: ${_transfer.accountNumber}'),
      ),
    );
  }
}

class Transfer {
  final double transferValue;
  final int accountNumber;
  Transfer(this.transferValue, this.accountNumber);
}
