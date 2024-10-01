import 'package:flutter/material.dart';

class HospitalForm extends StatefulWidget {
  const HospitalForm({super.key});

  @override
  State<HospitalForm> createState() => _HospitalFormState();
}

class _HospitalFormState extends State<HospitalForm> {
  // This controller is used to control the content of the TextField
  TextEditingController _genderController = TextEditingController();
  TextEditingController _blooodController = TextEditingController();
  TextEditingController _chronicDiseasController = TextEditingController();
  TextEditingController _allergiesController = TextEditingController();
  TextEditingController _vesionController = TextEditingController();
  TextEditingController dateInput = TextEditingController();

  // This is the list of items for the dropdown
  final List<String> _Gender = [
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
  final List<String> _ChronicDiseas = [
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

  final List<String> _Vision = [
    'عەدەسە',
    'چاویلکە',
    'نەخێر',
  ];

  final List<String> _Allergies = [
    'دەرمان',
    'خۆراک',
    'شتی تر',
    'هەستیاری نییە'
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

  List<Widget> containerList = []; // To store the list of containers
  String? selectedLanguage; // To store the selected language

  @override
  void initState() {
    super.initState();
    selectedLanguage = 'English'; // Default to English
    containerList = buildListForLanguage('English');
    dateInput.text = '';
    super.initState();

    // Initialize the list for English
  }

  // Function to build a list of containers based on selected language
  List<Widget> buildListForLanguage(String language) {
    List<Widget> list = [];
    if (language == 'Kurdish')
    {
      list.addAll([
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
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بەرواری لە دایک بوون',
            labelStyle: const TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: const TextStyle(color: Colors.green, fontSize: 20),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
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



        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _genderController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
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
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _blooodController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperText:
                'تکایە هەر نەخۆشییەک کە هەتبووە یان ئێستا هەتە دیاری بکە , ئەگەر هیچ کام لەمانە هەیە، تکایە ڕوونکردنەوە بدە',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
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
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _chronicDiseasController,
          // TextController connected to TextField
          decoration: InputDecoration(
            // helperText: 'ئایا هیچ هەستیارییەکت هەیە بۆ',
            // helperStyle: TextStyle(color: Colors.grey,fontSize: 15),

            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _ChronicDiseasItem,
              // The currently selected dropdown item
              items: _ChronicDiseas.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _ChronicDiseasItem = newValue; // Update selected value
                  _chronicDiseasController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بوونی نەخۆشی',
            //hintText: 'تکایە هەر نەخۆشییەک کە هەتبووە یان ئێستا هەتە دیاری بکە',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _allergiesController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _AllergiesItem,
              // The currently selected dropdown item
              items: _Allergies.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _AllergiesItem = newValue; // Update selected value
                  _allergiesController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: ' هەبوونی هەستیاریی',
            //hintText: 'ئایا هیچ هەستیارییەکت هەیە بۆ:',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText: 'ناوی هەر دەرمانێک کە ئێستا بەکاری دەهێنیت بنووسە:',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'دەرمانەکانی ئێستا',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            //hintText: 'ناوی هەر دەرمانێک کە ئێستا بەکاری دەهێنیت بنووسە',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText: 'هەر نەشتەرگەری یان برینداری گرنگ کە ڕوویداوە:',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
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
            labelText: ' نەشتەرگەری و برینداری',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            // hintText: 'هەر نەشتەرگەری یان برینداری گرنگ کە ڕوویداوە',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText:
                'ئایا هیچ سنووردارییەکی جەستەییت هەیە کە کاریگەری لەسەر خزمەتی سەربازیت هەبێت؟:',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
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
            labelText: ' توانای جەستەیی',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            // hintText: 'هئایا هیچ سنووردارییەکی جەستەییت هەیە کە کاریگەری لەسەر خزمەتی سەربازیت هەبێت؟',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
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
            labelText: ' بیستن',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            //hintText: 'ئایا هیچ کێشەیەکی بیستنت هەیە؟',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _vesionController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _VisionItem,
              // The currently selected dropdown item
              items: _Vision.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _VisionItem = newValue; // Update selected value
                  _vesionController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بینین',
            //  hintText: 'ئایا چاویلکە یان عەدەسە بەکاردەهێنیت؟',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: Color.fromRGBO(191, 189, 189, 1.0),
          thickness: 2,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
            style: TextStyle(color: Colors.green, fontSize: 25),
            'من ڕایدەگەیەنم کە هەموو زانیارییەکانی سەرەوە ڕاست ودروستن بە پێی باشترین زانیاریم'),
        const SizedBox(
          height: 15,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'بەرواری  پڕکردنەوە',
            labelStyle: const TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: const TextStyle(color: Colors.green, fontSize: 20),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
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

        SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 40),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'واژوو',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
      ]);
    }
    else if (language == 'English') {
      list.addAll([
        const TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Full Name',
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
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'BirthDay',
            labelStyle: const TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: const TextStyle(color: Colors.green, fontSize: 20),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
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

        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _genderController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _GenderItem,
              // The currently selected dropdown item
              items: _GenderEn.map((String item) {
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
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _blooodController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperText:
                '"Please specify any illnesses that have occurred or are currently present. \n'
                'If there are none, please provide clarification."',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _BloodItem,
              // The currently selected dropdown item
              items: _BloodGroupEn.map((String item) {
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
            labelText: 'Blood Type',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _chronicDiseasController,
          // TextController connected to TextField
          decoration: InputDecoration(
            // helperText: 'ئایا هیچ هەستیارییەکت هەیە بۆ',
            // helperStyle: TextStyle(color: Colors.grey,fontSize: 15),

            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _ChronicDiseasItem,
              // The currently selected dropdown item
              items: _ChronicDiseasEn.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _ChronicDiseasItem = newValue; // Update selected value
                  _chronicDiseasController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Chronic Illness',
            //hintText: 'تکایە هەر نەخۆشییەک کە هەتبووە یان ئێستا هەتە دیاری بکە',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _allergiesController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _AllergiesItem,
              // The currently selected dropdown item
              items: _AllergiesEn.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _AllergiesItem = newValue; // Update selected value
                  _allergiesController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: ' Allergies',
            //hintText: 'ئایا هیچ هەستیارییەکت هەیە بۆ:',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText:
                '"Please write the name of any medication you are currently using:"',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Current Medications',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            //hintText: 'ناوی هەر دەرمانێک کە ئێستا بەکاری دەهێنیت بنووسە',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText: 'Any important injury or illness that has occurred:',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
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
            labelText: 'Surgeries and Illnesses',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            // hintText: 'هەر نەشتەرگەری یان برینداری گرنگ کە ڕوویداوە',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText:
                'Do you have any physical limitations that might affect your military service?',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
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
            labelText: 'Physical Abilities',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            // hintText: 'هئایا هیچ سنووردارییەکی جەستەییت هەیە کە کاریگەری لەسەر خزمەتی سەربازیت هەبێت؟',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
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
            labelText: ' Contact',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            //hintText: 'ئایا هیچ کێشەیەکی بیستنت هەیە؟',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _vesionController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _VisionItem,
              // The currently selected dropdown item
              items: _VisionEn.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _VisionItem = newValue; // Update selected value
                  _vesionController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Contact',
            //  hintText: 'ئایا چاویلکە یان عەدەسە بەکاردەهێنیت؟',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: Color.fromRGBO(191, 189, 189, 1.0),
          thickness: 2,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
            style: TextStyle(color: Colors.green, fontSize: 25),
            'I declare that all the information provided above is true and correct to the best of my knowledge'),
        const SizedBox(
          height: 15,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Submition Date',
            labelStyle: const TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: const TextStyle(color: Colors.green, fontSize: 20),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
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
        SizedBox(
          height: 20,
        ),
        TextField(
          style: TextStyle(fontSize: 40),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Notes',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
      ]);
    } else if (language == 'Arabic') {
      list.addAll([
        TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الاسم الكامل',
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
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'تاريخ الميلاد',
            labelStyle: const TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: const TextStyle(color: Colors.green, fontSize: 20),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
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
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _genderController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _GenderItem,
              // The currently selected dropdown item
              items: _GenderEn.map((String item) {
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
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _blooodController,
          // TextController connected to TextField
          decoration: InputDecoration(
            helperText: '"يرجى تحديد أي أمراض حدثت أو موجودة حاليًا. \n'
                'إذا لم يكن هناك شيء، يرجى تقديم التوضيح."',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _BloodItem,
              // The currently selected dropdown item
              items: _BloodGroupEn.map((String item) {
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
            labelText: 'فصيلة الدم',
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _chronicDiseasController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _ChronicDiseasItem,
              // The currently selected dropdown item
              items: _ChronicDiseasEn.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _ChronicDiseasItem = newValue; // Update selected value
                  _chronicDiseasController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الأمراض المزمنة',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _allergiesController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _AllergiesItem,
              // The currently selected dropdown item
              items: _AllergiesEn.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _AllergiesItem = newValue; // Update selected value
                  _allergiesController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الحساسية',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText: '"يرجى كتابة اسم أي دواء تستخدمه حاليًا:"',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
          ),
        ),
        const SizedBox(
          height: 20,
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
            labelText: 'أدوية حالية',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
            helperText: 'يرجى كتابة أي مرض أو علاج مهم مررت به سابقًا:',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 18),
            helperMaxLines: 3,
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
            labelText: 'القدرات البدنية',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            // hintText: 'هل لديك أي قيود بدنية قد تؤثر على خدمتك العسكرية؟',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
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
            labelText: 'الاتصال',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            // hintText: 'هل لديك أي مشكلة في السمع؟',
            hintStyle: TextStyle(color: Colors.green, fontSize: 15),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _vesionController,
          // TextController connected to TextField
          decoration: InputDecoration(
            suffixIcon: DropdownButton<String>(
              hint: Text(' '),
              // Placeholder in the dropdown
              value: _VisionItem,
              // The currently selected dropdown item
              items: _VisionEn.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _VisionItem = newValue; // Update selected value
                  _vesionController.text =
                      newValue!; // Update TextField with selected value
                });
              },
              underline: Container(), // Remove default underline
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'الاتصال',
            // hintText: 'هل تستخدم نظارات أو عدسات؟',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
            labelStyle: const TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(color: Color.fromRGBO(191, 189, 189, 1.0), thickness: 2),
        const SizedBox(
          height: 15,
        ),
        Text(
          style: TextStyle(color: Colors.green, fontSize: 25),
          'أقر بأن جميع المعلومات المقدمة أعلاه صحيحة ودقيقة وفقًا لأفضل ما لدي من معرفة',
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          controller: dateInput,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month_outlined),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'التاريخ اتقديم',
            labelStyle: const TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: const TextStyle(color: Colors.green, fontSize: 20),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
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
          style: TextStyle(fontSize: 40),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(191, 189, 189, 1.0), width: 3)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'ملاحظات',
            labelStyle: TextStyle(
                fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
            hintText: '',
            hintStyle: TextStyle(color: Colors.green, fontSize: 20),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 3)),
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
        backgroundColor: const Color.fromRGBO(101, 149, 101, 1.0),
        title: Directionality(
          textDirection: textDirection,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButton(
                color: Colors.white,
              ),
              const Flexible(
                child: Text(
                  'Health Department',
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
                  dropdownColor: Color.fromRGBO(101, 149, 101, 1.0),
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
              child: Text(
                submitText,
                style: const TextStyle(color: Colors.green, fontSize: 25),
              ),
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
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
