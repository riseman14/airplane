import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final bool isAvailable;
  final String id;
  //NOTE: 0 = AVAILABLE 1 = SELECTED 2 = UNAVAILABLE

  const SeatItem({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnavailable;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailable;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailable;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
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
          child: child()),
    );
  }
}
