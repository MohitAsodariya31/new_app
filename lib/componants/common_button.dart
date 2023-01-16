import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String? title;
  final bool? isArrow;
  final double? width;
  final GestureTapCallback? onTap;

  const CommonButton({
    Key? key,
    this.title,
    this.isArrow = false,
    this.width,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap ?? () {},
        child: Container(
          height: 55,
          width: width ?? double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title ?? "123456",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              isArrow!
                  ? const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
