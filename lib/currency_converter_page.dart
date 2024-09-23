import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterpageState();
}

class _CurrencyConverterpageState extends State<CurrencyConverterPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) / 83.5;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(46, 28, 187, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 192, 234, 2),
          elevation: 0,
          title: const Text(
            'Currency Converter',
            style: TextStyle(fontFamily: 'Times New Roman', fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'USD ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontFamily: 'Comic Sans',
                      fontSize: 60,
                      color: Color.fromARGB(244, 213, 250, 3),
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: textEditingController, // Controller added here
                  style: const TextStyle(
                    color: Color.fromARGB(255, 4, 4, 4),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Please enter the amount in INR!',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
                    prefixIcon: Icon(Icons.currency_rupee_rounded),
                    prefixIconColor: Color.fromARGB(255, 232, 80, 80),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 232, 80, 80),
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 232, 80, 80),
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  onPressed: convert,
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all(10),
                    backgroundColor:
                        WidgetStateProperty.all(Colors.yellowAccent),
                    foregroundColor: WidgetStateProperty.all(Colors.black),
                    minimumSize: WidgetStateProperty.all(
                      const Size(double.infinity, 50),
                    ),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                  ),
                  child: const Text('Convert'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
