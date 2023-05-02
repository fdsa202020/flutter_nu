import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VatPage extends StatefulWidget {
  const VatPage({Key? key}) : super(key: key);
  @override
  State<VatPage> createState() => _VatPageState();
}

class _VatPageState extends State<VatPage> {
  final formKey = GlobalKey<FormState>();
  var objFormatDouble = NumberFormat('#,##0.00');
  var objFormatInt = NumberFormat('#,##0');
  String strDisplay = "";
  double douProduct = 0.00;
  double douSum = 0.00;
  double douVat = 0.00;
  double douPay = 0.00;
  int intPeriod = 0;
  double douAmount = 0.00;
  double dousizefont = 15.0;

  void FormSubmit() {
    if (formKey.currentState!.validate()) {
      //ตรวจว่าผ่านไหม
      formKey.currentState!.save(); //บันทึกค่า
    }
  }
  //บัตรเครดิต = ดอกเบี้ย = (ค่าสินค้าหรือบริการ x อัตราดอกเบี้ยต่อปี x จำนวนวัน) / 365.

  void Reset() {
    setState(() {
      strDisplay = "";
    });
  }

  void FormReset() {
    setState(() {
      formKey.currentState!.reset();
      strDisplay = "";
    });
  }

  void SetPeriod(value) {
    setState(() {
      intPeriod = int.parse(value);
      SetDisplay();
    });
  }

  void setPrin(value) {
    setState(() {
      douProduct = double.parse(value);
      SetDisplay();
    });
  }

  void setInterestrate(value) {
    setState(() {
      douVat = double.parse(value)/107;
      SetDisplay();
    });
  }

  void calculator() {
    douAmount = douProduct *douVat;
    douSum = douProduct-douAmount;
    douPay = douProduct - douSum;
    
  }

  void SetDisplay() {
    setState(() {
      calculator();
      strDisplay =
          'Digital Business NU Store receives ${objFormatDouble.format(douProduct)} THB, \nconsisting of a total pre-tax value of ${objFormatDouble.format(douProduct-douAmount)} THB \nand a value-added tax of  ${objFormatDouble.format(douPay)} THB \nThank you ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        //เก็บค่่า input
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Digital Business NU Store (Tax ID: 099-4-00047788-1) ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            PriceFormField(),
            DownFormField(),
            
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '$strDisplay',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                resetButton(),
                calculationButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget PriceFormField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Product Price (1.00 - 1,000,000.00 THB) ",
        hintText: "Input Product Price",
        icon: Icon(Icons.payments),
      ),
      validator: (value) {
        if (double.parse(value!) < 1.00 || double.parse(value) > 1000000.00) {
          return "Product Price must be between 1.00 - 1,000,000.00 THB ";
        } else {
          Reset();
          return null;
        }
      },
      onSaved: (value) {
        setPrin(value);
      },
    );
  }

  Widget DownFormField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Interest Rate (0.00 - 20.00 %/yr.)",
        hintText: "Input Interest Rate",
        icon: Icon(Icons.monetization_on),
      ),
      validator: (value) {
        if (double.parse(value!) < 1 || double.parse(value) > 20) {
          return "Interest Rate must be between 0.00 - 20.00 %/yr.";
        } else {
          Reset();
          return null;
        }
      },
      onSaved: (value) {
        setInterestrate(value);
      },
    );
  }

/*  Widget submitButton() {
    return ElevatedButton(
      // color: Colors.orangeAccent,
      onPressed: FormSubmit,
      child: Text("Log in"),
    );
  }
*/
  Widget resetButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormReset,
      child: Text("Reset"),
    );
  }

  Widget calculationButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormSubmit,
      child: Text("Calculate VAT"),
    );
  }
}
