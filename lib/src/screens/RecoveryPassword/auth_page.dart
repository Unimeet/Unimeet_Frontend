import 'package:animated_widgets/widgets/rotation_animated.dart';
import 'package:animated_widgets/widgets/shake_animated_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unimeet/src/widgets/button_widget.dart';

class VerfiyMfa extends StatefulWidget {
  const VerfiyMfa({super.key});

  @override
  VerfiyMfaState createState() => VerfiyMfaState();
}

class VerfiyMfaState extends State<VerfiyMfa> {
  late String code;
  late bool loaded;
  late bool shake;
  late bool valid;
  final TextEditingController _controller = TextEditingController();
  final FocusNode _textNode = FocusNode();

  @override
  void initState() {
    super.initState();
    code = '';
    loaded = true;
    shake = false;
    valid = true;
  }

  void onCodeInput(String value) {
    setState(() {
      code = value;
    });
  }

  Future<void> verifyMfaAndNext() async {
    setState(() {
      loaded = false;
    });
    const bool result = false; //backend call
    setState(() {
      loaded = true;
      valid = result;
    });

    if (valid) {
      // do next
    } else {
      setState(() {
        shake = true;
      });
      await Future<String>.delayed(
          const Duration(milliseconds: 300), () => '1');
      setState(() {
        shake = false;
      });
    }
  }

  List<Widget> getField() {
    final List<Widget> result = <Widget>[];
    for (int i = 1; i <= 6; i++) {
      result.add(
        ShakeAnimatedWidget(
          enabled: shake,
          duration: const Duration(
            milliseconds: 100,
          ),
          shakeAngle: Rotation.deg(
            z: 20,
          ),
          curve: Curves.linear,
          child: Column(
            children: <Widget>[
              if (code.length >= i)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    code[i - 1],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Container(
                  height: 5.0,
                  width: 30.0,
                  color: shake ? Colors.red : Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                SystemChannels.textInput.invokeMethod<String>('TextInput.hide');
              },
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Verifique seu email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Por favor insira o pin de 6 digitos.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (!valid)
                      Row(
                        children: const <Widget>[
                          Text(
                            'Código incorreto!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    SizedBox(
                      height: valid ? 68 : 10,
                    ),
                    if (!valid)
                      const Text(
                        'O código inserido está incorreto, tente novamente.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 90,
                      width: 300,
                      // color: Colors.amber,
                      child: Stack(
                        children: <Widget>[
                          Opacity(
                            opacity: 0,
                            child: TextFormField(
                              controller: _controller,
                              focusNode: _textNode,
                              keyboardType: TextInputType.number,
                              onChanged: onCodeInput,
                              maxLength: 6,
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: getField(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Button(
                        buttonText: "Verificar",
                        handleClickButton: verifyMfaAndNext)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
