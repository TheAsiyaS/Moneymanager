
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.green,
            tabs: [
              Tab(text: 'Income'),
              Tab(text: 'Expenses'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _CategoryList(isIncome: true),
                _CategoryList(isIncome: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class _CategoryList extends StatelessWidget {
  final bool isIncome;
  const _CategoryList({required this.isIncome});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 5,
          itemBuilder: (context, index) => Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text('${isIncome ? "Income" : "Expense"} Title'),
              trailing: const Icon(Icons.close),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}




