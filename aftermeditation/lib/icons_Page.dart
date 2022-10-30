import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card.dart';
import 'icon.dart';
import 'button.dart';

// const ColorIcon = Color(0xFF8D8E98);
const ColorIcon = Colors.black;
const ColorButton = Colors.white;

enum Select {
  excited,
  Happy,
  Normal,
  Sad,
}

class IconsPage extends StatefulWidget {
  @override
  State<IconsPage> createState() => _IconsPageState();
}

class _IconsPageState extends State<IconsPage> {
  dynamic selectedIcon;
  dynamic LabelButton = 'Send';
  dynamic ColorButton = Colors.white;
  dynamic ColorLabel = Colors.black;

  Map<String, Color> colorTextIcon = {
    'Excited': Colors.white,
    'Happy': Colors.white,
    'Normal': Colors.white,
    'Sad': Colors.white,
  };

  int check = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100.0,
            color: Color(0xFFD2DAFF),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              child: Text(
                'How are you feeling after meditation?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onFress: () {
                      setState(() {
                        selectedIcon = Select.excited;
                        LabelButton = 'Submit';
                        ColorButton = Colors.black;
                        ColorLabel = Colors.white;
                      });
                    },
                    colour: Colors.transparent,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.faceGrinWide,
                      label: 'Excited',
                      colour: selectedIcon == Select.excited
                          ? ColorIcon
                          : Colors.white,
                      colourTexticon: selectedIcon == Select.excited
                          ? ColorIcon
                          : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onFress: () {
                      setState(() {
                        selectedIcon = Select.Happy;
                        ColorButton = Colors.black;
                        LabelButton = 'Submit';
                        ColorLabel = Colors.white;
                      });
                    },
                    colour: Colors.transparent,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.faceSmileBeam,
                      label: 'Happy',
                      colour: selectedIcon == Select.Happy
                          ? ColorIcon
                          : Colors.white,
                      colourTexticon: selectedIcon == Select.Happy
                          ? ColorIcon
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onFress: () {
                      setState(() {
                        selectedIcon = Select.Normal;
                        LabelButton = 'Submit';
                        ColorButton = Colors.black;
                        ColorLabel = Colors.white;
                      });
                    },
                    colour: Colors.transparent,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.faceSmile,
                      label: 'Normal',
                      colour: selectedIcon == Select.Normal
                          ? ColorIcon
                          : Colors.white,
                      colourTexticon: selectedIcon == Select.Normal
                          ? ColorIcon
                          : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onFress: () {
                      setState(() {
                        selectedIcon = Select.Sad;
                        LabelButton = 'Submit';
                        ColorButton = Colors.black;
                        ColorLabel = Colors.white;
                      });
                    },
                    colour: Colors.transparent,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.faceSadCry,
                      label: 'Sad',
                      colour:
                          selectedIcon == Select.Sad ? ColorIcon : Colors.white,
                      colourTexticon:
                          selectedIcon == Select.Sad ? ColorIcon : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 130.0,
          ),
          Button(
            colorbutton: ColorButton,
            label: LabelButton,
            colorlabel: ColorLabel,
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
