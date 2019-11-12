import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String value;
  final Widget prefix;

  CustomTextField({@required this.label, @required this.value, this.prefix});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _textEditingController = TextEditingController();
  bool isObscure = true;
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _textEditingController.text = widget.value;

    super.initState();
  }

  void _onObscureChange() {
    setState(() {
      isObscure = !isObscure;

      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _textEditingController,
            obscureText: isObscure,
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: SizedBox(
                height: 20,
                child: FlatButton(
                  child: Text(
                    isObscure ? "Mostrar" : "Esconder",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: _onObscureChange,
                ),
              ),
              prefixIcon: widget.prefix != null
                  ? SizedBox(
                      child: Center(
                        child: widget.prefix,
                      ),
                      width: 20,
                    )
                  : null,
              filled: true,
              fillColor: Color(0xFFDDDAE0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
            ),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 20,
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
