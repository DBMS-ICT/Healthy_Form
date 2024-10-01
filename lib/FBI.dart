import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FBI extends StatefulWidget {
  const FBI({super.key});

  @override
  State<FBI> createState() => _FBIState();
}

class _FBIState extends State<FBI> {
  // This controller is used to control the content of the TextField
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _blooodController = TextEditingController();
  final TextEditingController _chronicDiseasController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();
  final TextEditingController _PshtgiryController = TextEditingController();
  final TextEditingController _vesionController = TextEditingController();
  TextEditingController dateInput = TextEditingController();

  // This is the list of items for the dropdown
  final _Pshtgiry = <String>[
    'بەڵی',
    'نەخێر تازە پەیوەندی کردوە',
  ];
  final _Gender = <String>[
    'نێر',
    'مێ',
  ];
  final List<String> _BloodGroup = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  List<String> get _ChronicDiseas => [
    'نەخۆشی دڵ',
    'پەستانی خوێن بەرز',
    'شەکرە',
    'ئەسم',
    'ئێسک و جومگە',
    'نەخۆشی گورچیلە',
    'نەخۆشی جگەر',
    'نەخۆشی دەروونی',
    'نەخۆشی نییە'
  ];

  final List<String> _GenderEn = [
    'Male',
    'Female',
  ];

  final List<String> _BloodGroupEn = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];

  final List<String> _ChronicDiseasEn = [
    'Heart disease',
    'High blood pressure',
    'Diabetes',
    'Asthma',
    'Bone and joint disease',
    'Kidney disease',
    'Liver disease',
    'Mental illness',
    'No chronic illness'
  ];

  final List<String> _VisionEn = [
    'Lenses',
    'Glasses',
    'No',
  ];

  final List<String> _AllergiesEn = [
    'Medication',
    'Food',
    'Other',
    'No allergies'
  ];

  // This variable will store the currently selected dropdown item
  String? _GenderItem;
  String? _BloodItem;
  String? _ChronicDiseasItem;
  String? _VisionItem;
  String? _AllergiesItem;
  String? _PshtgiryItem;

  List<Widget> containerList = []; // To store the list of containers
  String? selectedLanguage; // To store the selected language

  @override
  void initState() {
    super.initState();
    selectedLanguage = 'Kurdish'; // Default to English
    containerList = buildListForLanguage('Kurdish');
    dateInput.text = '';
    super.initState();

    // Initialize the list for English
  }

  // Function to build a list of containers based on selected language
  List<Widget> buildListForLanguage(String language) {
    List<Widget> list = [];
    if (language == 'Kurdish') {
      list.addAll([
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'کۆد',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناو',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی باوک',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی باپیر',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی باپیرە گەورە',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی چواری دایک',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بەرواری لە دایک بوون',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),

        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _genderController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _GenderItem,
              // The currently selected dropdown item
              items: _Gender.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _GenderItem = newValue; // Update selected value
                  _genderController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ڕەگەز',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _blooodController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _BloodItem,
              // The currently selected dropdown item
              items: _BloodGroup.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _BloodItem = newValue; // Update selected value
                  _blooodController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'جۆری خوێن',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: ' لەلایەن کێوە پشتگری کراوە',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _PshtgiryController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _PshtgiryItem,
              // The currently selected dropdown item
              items: _Pshtgiry.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _PshtgiryItem = newValue; // Update selected value
                  _PshtgiryController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'پێشتر ئەندامی حیزب بووە؟',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'لایەنی حزبی',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بەرواری پەیوەندی کردن ',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن زمان دەزانی بیانوسە',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی قوتابخانەکان بەپێ ئاستی\n خوێندن ڕیزیان بکە',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی زانکۆ/ناوی بەش/',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بەرواری دەرچون لە زانکۆ ',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ناوی هاوڕی نزیکەکانت بنوسە/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن سەرخێزانن؟',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'جەن مامت هەیە؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن ئاموزات هەیە؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن پوورت هەیە(باوک)؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن پوورزات هەیە(باوک)؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن پوورت هەیە(دایک)؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن پوورزات هەیە(دایک)؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن خالت هەیە؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'چەن خالۆزات هەیە؟/لایەن حیزبیان',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'سەفەرت کردووە؟/بۆچەن شوێن/وڵات',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ڕەگەزنامەی وڵاتانی تر هەیە؟/چی ە چی',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'خولیاکانت چین؟',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'کتێب دەخوێنیتەوە؟',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'هیج کێشەیەکی خەزانی یان دوژمنی؟',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),


      ]);

    }
    else if (language == 'English') {
      list.addAll([
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Code',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'first name',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: ' second name',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText:  'third name',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'last name',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'full name you mother',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Birthday',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),

        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _genderController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _GenderItem,
              // The currently selected dropdown item
              items: _Gender.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _GenderItem = newValue; // Update selected value
                  _genderController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Gender',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _blooodController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _BloodItem,
              // The currently selected dropdown item
              items: _BloodGroup.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _BloodItem = newValue; // Update selected value
                  _blooodController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Blood Group',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Supported by whom? ',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _PshtgiryController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _PshtgiryItem,
              // The currently selected dropdown item
              items: _Pshtgiry.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _PshtgiryItem = newValue; // Update selected value
                  _PshtgiryController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Was he a former party member?',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'The party side',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Date of joining',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Write down how many languages you know',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Sort the names of the schools by\n level of education',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'University Name/Department Name/',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Date of graduation ',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Write the names of your close friends/party',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'how many families are there؟',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many uncles do you have?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many students do you have?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many uncles do you have (father)?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many uncles do you have (father)?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many aunts do you have (mother)?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many aunts do you have (mother)?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many points do you have?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'How many aunts do you have?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Have you traveled?/to how many places/countries',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Do you have citizenship of other countries?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'What are your hobbies؟',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: ' do you read books',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Any treasury or enemy problems?',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),


      ]);

    }
    else if (language == 'Arabic') {
      list.addAll([
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كود',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الاسم',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'اسم الأب',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'اسم الجد',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'اسم الجد الأكبر',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'اسم والدة الأم',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'تاريخ الميلاد',
            labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3)),
          ),
          readOnly: true, // Prevent user from manually entering date
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"; // Format the date
              });
            }
          },
        ),

        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _genderController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              // Placeholder in the dropdown
              value: _GenderItem,
              // The currently selected dropdown item
              items: _Gender.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _GenderItem = newValue; // Update selected value
                  _genderController.text =
                  newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الجنس',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),

        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _blooodController,
          decoration: InputDecoration(
            helperStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              value: _BloodItem,
              items: _BloodGroup.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _BloodItem = newValue;
                  _blooodController.text = newValue!;
                });
              },
              underline: Container(),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'فصيلة الدم',
            labelStyle: const TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'من طرف من تم دعمه؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _PshtgiryController,
          decoration: InputDecoration(
            helperStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: const Text(' '),
              value: _PshtgiryItem,
              items: _Pshtgiry.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _PshtgiryItem = newValue;
                  _PshtgiryController.text = newValue!;
                });
              },
              underline: Container(),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'هل كان عضواً في الحزب من قبل؟',
            labelStyle: const TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الطرف الحزبي',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'تاريخ التواصل',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
              });
            }
          },
        ),

        const SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد اللغات التي يمكنك كتابتها؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'أسماء المدارس حسب مستوى التعليم',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'اسم الجامعة / القسم',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'تاريخ التخرج من الجامعة',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null) {
              setState(() {
                dateInput.text = "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
              });
            }
          },
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'اكتب أسماء أصدقائك المقربين / جانب حزبي',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الجوائز؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'هل لديك أقارب؟ / جانب حزبي',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد المعلمين؟ / جانب حزبي',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الأخوة لديك (الأب)؟/من جانب الحزب',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الأخوات لديك (الأب)؟/من جانب الحزب',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الأخوة لديك (الأم)؟/من جانب الحزب',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الأخوات لديك (الأم)؟/من جانب الحزب',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الأخوال لديك؟/من جانب الحزب',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'كم عدد الخالات لديك؟/من جانب الحزب',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'هل سافرت؟/إلى أي أماكن/بلدان',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'هل لديك جنسية بلدان أخرى؟/ما هي؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),

        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ما هي هواياتك؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'هل تقرأ كتب؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(191, 189, 189, 1.0),
                width: 3,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'أي مشاكل أسرية أو عداوات؟',
            labelStyle: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            hintText: '',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),

      ]);

    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // Determine text direction based on selected language
    TextDirection textDirection =
    (selectedLanguage == 'Arabic' || selectedLanguage == 'Kurdish')
        ? TextDirection.rtl
        : TextDirection.ltr;

    // Determine message to display based on selected language
    String message;
    if (selectedLanguage == 'Kurdish') {
      message = 'تکایە بە دروستی فۆرمەکە پریکەرەوە'; // Kurdish message
    } else if (selectedLanguage == 'Arabic') {
      message = 'يرجى ملء النموذج بشكل صحيح'; // Arabic message
    } else {
      message = 'Please fill out the form correctly'; // Default English message
    }

    // Determine submit button text based on selected language
    String submitText;
    if (selectedLanguage == 'Kurdish') {
      submitText = 'ناردن'; // Kurdish message
    } else if (selectedLanguage == 'Arabic') {
      submitText = 'أرسل'; // Arabic message
    } else {
      submitText = 'Submit'; // Default English message
    }

    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,

        // Remove back button
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1.0),
        title: Directionality(
          textDirection: textDirection,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BackButton(
                color: Colors.white,
              ),
              const Flexible(
                child: Text(
                  'FBI',
                  overflow: TextOverflow.ellipsis, // Prevent text overflow
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              // DropdownButton in AppBar with Icon
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: const Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 30,
                  ),
                  // Dropdown icon
                  // value: selectedLanguage,
                  dropdownColor: const Color.fromRGBO(101, 149, 101, 1.0),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLanguage = newValue;
                      containerList = buildListForLanguage(
                          selectedLanguage!); // Update the list based on the language
                    });
                  },
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
        ),
      ),
      body: Directionality(
        textDirection: textDirection, // Apply text direction to body
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          // Optional padding for the ListView
          children: [
            Text(
              message, // Display message based on the selected language
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(101, 149, 101, 1.0),
              ),
            ),
            const SizedBox(height: 49), // Spacing
            ...containerList,
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                // White background
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                // Padding
                shadowColor: Colors.transparent,
                // Removes shadow
                side: const BorderSide(color: Colors.green, width: 3),
                // Green border
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(5), // Rounded border radius
                ),
              ),
              child: Text(
                submitText,
                style: const TextStyle(color: Colors.green, fontSize: 25),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
