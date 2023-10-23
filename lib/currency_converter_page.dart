import 'package:flutter/material.dart';

//statefull widget allows us to make states
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double res = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text("Currency Converter"),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${res != 0 ? res.toStringAsFixed(2) : 0}",
              style: const TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter amount in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    res = double.parse(textEditingController.text) * 81;
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50)),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//stateless widget doesnt allow to make states
// class CurrencyConverterPage extends StatelessWidget {
//   const CurrencyConverterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double res = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     const border = OutlineInputBorder(
//         borderSide: BorderSide(
//           width: 2,
//           style: BorderStyle.solid,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(10)));
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.blueGrey,
//         title: const Text("Currency Converter"),
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               res.toString(),
//               style: const TextStyle(
//                 fontSize: 45,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: TextField(
//                 controller: textEditingController,
//                 keyboardType: const TextInputType.numberWithOptions(
//                     signed: true, decimal: true),
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: const InputDecoration(
//                   hintText: "Please enter amount in USD",
//                   hintStyle: TextStyle(color: Colors.black),
//                   prefixIcon: Icon(Icons.monetization_on),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   res = double.parse(textEditingController.text) * 81;
//                 },
//                 style: const ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(Colors.black),
//                   foregroundColor: MaterialStatePropertyAll(Colors.white),
//                   minimumSize:
//                       MaterialStatePropertyAll(Size(double.infinity, 50)),
//                 ),
//                 child: const Text("Convert"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
