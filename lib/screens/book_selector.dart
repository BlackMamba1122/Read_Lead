import 'package:flutter/material.dart';

final bookMap = {
  1: "PMBOK.pdf",
  2: "ISO2020.pdf",
  3: "ISO2021.pdf",
  4: "PMI.pdf",
  5: "PRINCE2.pdf",
};

class BookSelector extends StatefulWidget {
  final Function(Set<int>) onSelectionChanged;
  const BookSelector({super.key, required this.onSelectionChanged});

  @override
  State<BookSelector> createState() => _BookSelectorState();
}

class _BookSelectorState extends State<BookSelector> {
  final Set<int> _selectedBooks = {};

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: bookMap.entries.map((entry) {
        final bookId = entry.key;
        final isSelected = _selectedBooks.contains(bookId);

        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                _selectedBooks.remove(bookId);
              } else {
                _selectedBooks.add(bookId);
              }
              widget.onSelectionChanged(_selectedBooks);
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? const LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
                  : const LinearGradient(
                colors: [Colors.white, Colors.white],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isSelected ? Colors.deepPurple : Colors.grey.shade300,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: isSelected
                      ? Colors.deepPurple.withOpacity(0.4)
                      : Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.picture_as_pdf,
                  color: isSelected ? Colors.white : Colors.red,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  entry.value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.white : Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
