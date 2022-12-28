import 'package:flutter/material.dart';

import '../presentation/resources/colors_manager.dart';

void navigateTo(context, String route) {
  Navigator.pushNamed(context, route);
}
Widget customCheckBox({required context,required String title,required bool value,required onChanged}){
  return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged,activeColor: ColorManager.primary,),        Text(title,style: Theme.of(context).textTheme.bodyLarge,),
      ],
  );
}
void navigateAndFinish(context, String route) {
  Navigator.pushNamedAndRemoveUntil(
      context, route, (Route<dynamic> route) => false);
}

Widget defaultFormField({
  required context,
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged? onChange,
  GestureTapCallback? onTap,
  ValueChanged? onSubmit,
  required FormFieldValidator<String> validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? suffixPressed,
  bool isClickable = true,
  bool isPassword = false,
}) =>
    Container(
      color: ColorManager.chatGrey,
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyLarge,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onChanged: onChange,
        onFieldSubmitted: onSubmit,
        onTap: onTap,
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(
            prefix,
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
              : null,
          border: InputBorder.none,
        ),
      ),
    );

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: ColorManager.lightPrimary,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

Widget defaultButton({
  double width = double.infinity,
  Color background = ColorManager.primary,
  bool isUpperCase = true,
  double radius = 3.0,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextButton({
  required VoidCallback function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
      ),
    );

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final Color color, textColor;

  const RoundedButton({
    required this.text,
    required this.function,
    Key? key,
    this.color = ColorManager.primary,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: Container(
        width: size.width * 0.8,
        color: color,
        child: TextButton(
          onPressed: function,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
