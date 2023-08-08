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
      title: 'Flutter Course',
      amount: 19.99,
      time: DateTime.now(),
      category: Category.work,
    ),
    Cost(
      title: 'Cinema',
      amount: 15.69,
      time: DateTime.now(),
      category: Category.business,
    ),
  ];

// THÊM ITEM ĐÃ TẠO TỪ MH TRÊN VÀO CSDL:
  void _addCostNewToDB(Cost cost) {
    setState(() {
      _regisExpanse.add(cost);
    });
  }

  // ! XÓA 1 ITEM KHỎI MÀN HÌNH - TẠO THAO TÁC HOÀN TÁC 1 ITEM VỪA ĐƯỢC XÓA
  void _removeCostFromDB(Cost cost) {
    final expenseIndex = _regisExpanse.indexOf(cost);
    setState(() {
      _regisExpanse.remove(cost);
    });
    ScaffoldMessenger.of(context)
        .clearSnackBars(); //! NẾU XÓA NHIỀU ITEM CÙNG LÚC --> ALERT SẼ HIỆN LÊN VÀ XÓA ĐI TỨC THÌ
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color.fromARGB(157, 20, 140, 209),
        closeIconColor: Colors.white,
        duration: const Duration(seconds: 4),
        content: const Text('Một mục vừa được xóa đi.'),
        action: SnackBarAction(
          label: 'Hoàn tác',
          textColor: Colors.white,
          onPressed: () {
            setState(() {
              _regisExpanse.insert(expenseIndex, cost);
            });
          },
        ),
      ),
    );
  }

  //! TẠO MH: THÊM ITEM MỚI:
  void _overlayAddingCost() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (func) => NewExpense(addNewExpense: _addCostNewToDB),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget emtyCost = const Center(
      child: Text(
        'Không tìm thấy chi phí nào đang có!',
        style: TextStyle(
          // fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
    if (_regisExpanse.isEmpty == false) {
      emtyCost =
          ExpenseList(costList: _regisExpanse, removeCost: _removeCostFromDB);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theo dõi chi phí',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
            ),
            tooltip: 'Add Icon',
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: _overlayAddingCost,
          ),
        ],
        backgroundColor: const Color.fromARGB(197, 29, 206, 233),
        elevation: 10,
      ),

      // -------------//

      body: Column(
        children: [
          const Text('data chart'),
          Expanded(
            child: emtyCost,
          ),
        ],
      ),
    );
  }
}
