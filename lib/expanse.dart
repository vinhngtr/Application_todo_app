import 'package:flutter/material.dart';
import 'package:expansetracker/model/expensemodel.dart';
import 'package:expansetracker/expanse_list.dart';
import 'package:expansetracker/new_expense.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<Cost> _regisExpanse = [
    Cost(
      amount: 69,
      time: DateTime.now(),
      title: 'Flutter course',
      category: Category.work,
    ),
    Cost(
      title: 'Cinema',
      amount: 15.69,
      time: DateTime.now(),
      category: Category.business,
    ),
  ];

  void _overlayAddingCost() {
    showModalBottomSheet(
        context: context, builder: (func) => const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theo dõi chi phí'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add Icon',
            onPressed: _overlayAddingCost,
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 11, 122, 173),
        elevation: 20,
        // leading: IconButton(
        //   icon: const Icon(Icons.home),
        //   tooltip: 'Menu Icon',
        //   onPressed: () {},
        // ),
      ),

      // -------------//

      body: Column(
        children: [
          const Text('data chart'),
          Expanded(
            child: ExpenseList(costList: _regisExpanse),
          ),
        ],
      ),
    );
  }
}
