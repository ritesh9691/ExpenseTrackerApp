import 'package:flutter/material.dart';

import '../expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense? expanse;
  const ExpenseItem({
    super.key,
    this.expanse,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expanse!.title.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text("\$ ${expanse!.amount.toStringAsFixed(2)}"),
                const Spacer(),
                Row(
                  children: [
                    Icon(catergoryIcons[expanse!.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expanse!.formateDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
