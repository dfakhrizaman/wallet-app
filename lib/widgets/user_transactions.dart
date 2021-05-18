import 'package:flutter/material.dart';
import './add_transaction_card.dart';
import './transactions_list.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [];

  void addTransaction(String newTitle, double newAmount) {
    final newTransaction = Transaction(
      id: '${DateFormat.yMMMd().format(DateTime.now())}',
      title: newTitle,
      amount: newAmount,
      date: DateTime.now(),
    );

    setState(() {
      transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTransactionCard(addTransaction),
        TransactionsList(transactions),
      ],
    );
  }
}
