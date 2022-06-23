import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final int status;
  //NOTE: 0 = AVAILABLE 1 = SELECTED 2 = UNAVAILABLE

  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailable;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailable;

        default:
          return kUnavailable;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailable;

        default:
          return kUnavailable;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'You',
              style:
                  whiteTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
          );

        case 2:
          return SizedBox();

        default:
          return SizedBox();
      }
    }

    return Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor(),
          border: Border.all(
            color: borderColor(),
            width: 2,
          ),
        ),
        child: child());
  }
}
