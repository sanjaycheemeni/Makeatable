import 'package:flutter/material.dart';

class SortModalContent extends StatefulWidget {
  final String selectedSort;
  final Function(String) onSortChanged;

  SortModalContent({
    required this.selectedSort,
    required this.onSortChanged,
  });

  @override
  _SortModalContentState createState() => _SortModalContentState();
}

class _SortModalContentState extends State<SortModalContent> {
  bool isAscending = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Sort By'),
          ),
          RadioListTile(
            title: Text('Alphabetical'),
            value: 'Alphabetical',
            groupValue: widget.selectedSort,
            onChanged: (value) {
              widget.onSortChanged(value as String);
            },
          ),
          RadioListTile(
            title: Text('Price'),
            value: 'Price',
            groupValue: widget.selectedSort,
            onChanged: (value) {
              widget.onSortChanged(value as String);
            },
          ),
          // Add other RadioListTile widgets for different sort options

          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ascending'),
              Switch(
                value: isAscending,
                onChanged: (value) {
                  setState(() {
                    isAscending = value;
                  });
                },
              ),
              Text('Descending'),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Apply the sort changes here
              Navigator.pop(context); // Close the modal
            },
            child: Text('Apply Sort'),
          ),
        ],
      ),
    );
  }
}
