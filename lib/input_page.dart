
import 'package:bmi_caculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';


enum Gender { male, female }

class InputPage extends StatefulWidget {
   InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  num heightNumberSlider = 180;
  //1 = mailable  2 = female
  void updateColor() {
    maleCardColor == kActiveCardColor
        ? maleCardColor = kInactiveCardColor
        : maleCardColor = kActiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFF242A23),
        appBar: AppBar(
          title: const Center(child: Text('BMI CACULATOR')),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                          print("selected");
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                          print("selected");
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FeMale',
                      ),
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                      children: [
                         Text(
                           heightNumberSlider.toString(),
                           style: kNumberTextStyle,
                        ),
                         Text('cm',style:kLabelTextStyle),
                       ],
                    ),
                    Slider(
                      value:heightNumberSlider.toDouble(),
                      min:40,max:220,activeColor:  Color(0xFFD72828),
                      inactiveColor: const Color(0xFF8D8E98) ,
                      onChanged: (double newValue){
                        setState(() {
                          heightNumberSlider =newValue.round();
                        });
                      },
                    ),
                  ],
                ),
                color: kInactiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.ladderWater,
                        text: 'FeMale',
                      ),
                      color: kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FeMale',
                      ),
                      color: kInactiveCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: const Color(0xFFD54034),
              height: 80,
              width: double.infinity,
              child: const Center(
                child: Text(
                  '___________',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEDEEF3),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
