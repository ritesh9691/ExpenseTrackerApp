import 'package:expenses_traking/expense.dart';
import 'package:flutter/material.dart';

import 'widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense>? expenses;
  final void Function(Expense expense) onRemoved;
  const ExpensesList(
      {required this.expenses, super.key, required this.onRemoved});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses!.length,
        itemBuilder: (ctx, index) {
          return Dismissible(
              key: ValueKey(expenses![index]),
              background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.80),
                margin: Theme.of(context).cardTheme.margin,
              ),
              onDismissed: (direction) {
                onRemoved(expenses![index]);
              },
              child: ExpenseItem(
                expanse: expenses![index],
              ));
        });
  }
}
