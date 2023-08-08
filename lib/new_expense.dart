import 'package:flutter/material.dart';
import 'package:expansetracker/model/expensemodel.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({required this.addNewExpense, super.key});
  final void Function(Cost cost) addNewExpense;
  @override
  State<NewExpense> createState() => _NewCostState();
}

class _NewCostState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectDate;
  Category _selectedCategory = Category.business;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate, //? mốc bắt đầu có thể được chọn
      lastDate: now, //? mốc cuối là ngày hiện tại
    );
    setState(() {
      _selectDate = pickedDate;
    });
  }

  void _checkDataAndSubmit() {
    final trueAmount = double.tryParse(_amountController.text);
    final falseAmount = trueAmount == null || trueAmount <= 0;

    if (_titleController.text.trim().isEmpty ||
        (falseAmount || _selectDate == null)) {
      //! show error mess
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Giá trị nhập vào không hợp lệ'),
          content: const Text(
              'Hãy nhập lại tiêu đề hoặc chi phí và thời gian khi chưa hợp lệ!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    widget.addNewExpense(
      Cost(
        amount: trueAmount,
        time: _selectDate!,
        title: _titleController.text,
        category: _selectedCategory,
      ),
    );
    // ! đóng lớp overlay sau khi hoàn thành thêm 1 item mới!
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 30),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ! TITLE OF COST
          TextField(
            controller: _titleController,
            maxLength: 50,
            // mouseCursor: SystemMouseCursors.move,
            decoration: const InputDecoration(
              // border: UnderlineInputBorder(),
              labelText: 'Tên chi phí',
            ),
          ),

          // ! AMOUNT OF COST
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '\$ ',
                    label: Text('Chi phí'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),

              // ! PICK OF DATE
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _selectDate == null
                          ? 'Chưa chọn thời gian'
                          : formatter.format(_selectDate!),
                    ),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    )
                  ],
                ),
              )
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          // ! BUTTON XÁC THỰC
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (val) => DropdownMenuItem(
                        value: val,
                        child: Text(val.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: const ButtonStyle(
                          // backgroundColor: MaterialStatePropertyAll(
                          // Color.fromARGB(255, 232, 205, 247)),
                          ),
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: _checkDataAndSubmit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 232, 205, 247),
                        foregroundColor:
                            const Color.fromARGB(255, 59, 145, 215),
                      ),
                      child: const Text('Save change'),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
