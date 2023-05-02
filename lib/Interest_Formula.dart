import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({Key? key}) : super(key: key);
  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  final formKey = GlobalKey<FormState>();
  var objFormatDouble = NumberFormat('#,##0.00');
  var objFormatInt = NumberFormat('#,##0');
  String strDisplay = "";
  double douPrin = 0.00;
  double douSuminter = 0.00;
  double douInterestrate = 0.00;
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
      douPrin = double.parse(value);
      SetDisplay();
    });
  }

  void setInterestrate(value) {
    setState(() {
      douInterestrate = double.parse(value) / 100;
      SetDisplay();
    });
  }

  void calculator() {
    douSuminter = douPrin * pow((1 + douInterestrate / 1), 1 * intPeriod);
  }

  void SetDisplay() {
    setState(() {
      calculator();
      strDisplay =
          'You Saving become ${objFormatDouble.format(douSuminter)} THB';
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
                  "Saving",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            PriceFormField(),
            DownFormField(),
            PeriodFormField(),
            SizedBox(height: 20.0),
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
        labelText: "Principal (1,000.00 - 1,000,000.00 THB) ",
        hintText: "Input Principal",
        icon: Icon(Icons.payments),
      ),
      validator: (value) {
        if (double.parse(value!) < 1000 || double.parse(value) > 1000000) {
          return "Principal must be between 1,000 - 1,000,000 THB ";
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
        icon: Icon(Icons.currency_exchange),
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

  Widget PeriodFormField() {
    return TextFormField(
      obscureText: false, //เป็น......ใน pasword
      decoration: InputDecoration(
          labelText: "Period (1 - 100 yrs.)",
          hintText: "Input Period",
          icon: Icon(Icons.calendar_month)),
      validator: (value) {
        if (int.parse(value!) < 1 || double.parse(value) > 100) {
          return "Period must be between 1-100 yrs.";
        } else {
          Reset();
          return null;
        }
      },
      onSaved: (value) {
        SetPeriod(value);
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
      child: Text("Calculation"),
    );
  }
}
