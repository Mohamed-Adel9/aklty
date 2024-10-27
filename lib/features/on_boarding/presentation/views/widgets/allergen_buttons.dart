import 'package:flutter/material.dart';

class AllergenButtons extends StatefulWidget {
  @override
  _AllergenButtonsState createState() => _AllergenButtonsState();
}

class _AllergenButtonsState extends State<AllergenButtons> {
  // Map to store the state (selected/unselected) for each button
  final Map<String, bool> _isSelected = {
    'جلوتين': false,
    'البان': false,
    'بيض': false,
    'صويا': false,
    'فول سوداني': false,
    'قمح': false,
    'حليب': false,
    'سمك': true,
  };

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Wrap(
        alignment: WrapAlignment.end,
        spacing: 13.0,
        runSpacing: 15.0,
        children: _isSelected.keys.map((label) {
          return _buildButton(label);
        }).toList(),
      ),
    );

  }

  Widget _buildButton(String label) {
    bool selected = _isSelected[label] ?? false;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected[label] = !selected; // Toggle the selection state
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
        decoration: BoxDecoration(
          color: selected ? Colors.purple : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: selected ? Colors.purple : Colors.black,
            width: 1.5,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}