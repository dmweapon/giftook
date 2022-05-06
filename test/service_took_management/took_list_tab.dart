import 'package:flutter/material.dart';

class TookListTab extends StatelessWidget {
  final bool selected;
  final String tabName;
  final Function onPressedTab;

  TookListTab({
    required this.selected,
    required this.tabName,
    required this.onPressedTab,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: TextButton(
        onPressed: () => onPressedTab,
        child: Text(tabName),
        style: TextButton.styleFrom(
          backgroundColor: selected ? Colors.grey[400] : Colors.white,
          primary: selected ? Colors.black : Colors.grey[600],
          textStyle: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
