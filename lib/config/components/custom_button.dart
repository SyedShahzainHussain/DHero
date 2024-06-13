import 'package:dhero/utils/extension/general_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onPressed;
  final Color? color;
  final IconData? iconCheck;

  const CustomButton({
    this.title,
    this.onPressed,
    this.color,
    this.iconCheck,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? const Color.fromRGBO(252, 35, 49, 1),
        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.black.withOpacity(0.1),
        //       blurRadius: 10.0,
        //       spreadRadius: 0.0)
        // ]
      ),
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: onPressed,
              child: SizedBox(
                width: double.maxFinite,
                child: iconCheck != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            iconCheck!,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            title!.capitalize(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Text(
                        title!.capitalize(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
              )),
        ),
      ),
    );
  }
}
