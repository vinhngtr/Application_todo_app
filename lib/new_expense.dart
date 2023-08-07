import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewCostState();
}

class _NewCostState extends State<NewExpense> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ! TITLE OF COST
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: _titleController,
                maxLength: 50,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter tilte expense',
                ),
              ),
            ),
            // ! AMOUNT OF COST
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(_titleController.text);
                  },
                  child: const Text('Save change'),
                )
              ],
            )
          ],
        ));
  }
}
