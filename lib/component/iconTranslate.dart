import 'package:flutter/material.dart';

class IconTranslate extends StatelessWidget {
  final String selectedLanguage;
  final Function(String?) onLanguageChanged;

  const IconTranslate({
    Key? key,
    required this.selectedLanguage,
    required this.onLanguageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine the text direction based on the selected language
    TextDirection textDirection =
    (selectedLanguage == 'Arabic' || selectedLanguage == 'Kurdish')
        ? TextDirection.rtl
        : TextDirection.ltr;

    return Directionality(
      textDirection: textDirection, // Apply text direction based on language
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Align to the end (right)
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: const Icon(
                Icons.translate, // Use the translate icon for language switching
                color: Colors.black,
              ),
              value: selectedLanguage, // Current selected language
              dropdownColor: Colors.grey[800], // Background color of dropdown menu
              onChanged: onLanguageChanged, // Handle language change
              items: <String>['Kurdish', 'English', 'Arabic']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
