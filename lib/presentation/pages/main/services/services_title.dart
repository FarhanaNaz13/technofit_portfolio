import 'package:flutter/material.dart';
import 'package:technofit/core/core.dart';
import 'package:technofit/presentation/presentation.dart';
import 'package:technofit/utils/utils.dart';

class ServicesTitle extends StatelessWidget {
  const ServicesTitle({super.key, required this.animationController});

  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedWidgetShape(
      animationController: animationController,
      width: responsiveSize(
        context,
        context.widthInPercent(44),
        context.widthInPercent(28),
        tablet: Dimens.space220,
      ),
      height: responsiveSize(
        context,
        Dimens.space100,
        Dimens.space200,
        tablet: Dimens.space120,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            child: Icon(
              Icons.circle,
              color: Theme.of(context).cardColor,
              size: responsiveSize(context, Dimens.space72, Dimens.space150),
            ),
          ),
          Positioned(
            left: 0,
            bottom: responsiveSize(
              context,
              Dimens.space30,
              Dimens.space48,
            ),
            child: Text(
              Strings.of(context)!.services,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: responsiveSize(
                      context,
                      Dimens.space36,
                      Dimens.h1,
                      tablet: Dimens.h3,
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
