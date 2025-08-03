import 'package:flutter/material.dart';
import 'package:technofit/data/data.dart';
import 'package:technofit/presentation/presentation.dart';
import 'package:technofit/utils/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DataHelper> buttons = [
      DataHelper(
        title: Constants.get.linkedIn,
        iconPath: Images.icLinkedIn,
        iconColor: Palette.linkedIn,
        url: Constants.get.linkedInUrl,
      ),
      DataHelper(
        title: Constants.get.upwork,
        iconPath: Images.icUpwork,
        url: Constants.get.upworkUrl,
      ),
      DataHelper(
        title: Constants.get.github,
        iconPath: Images.icGithub,
        iconColor: Theme.of(context).textTheme.bodyLarge?.color,
        url: Constants.get.githubUrl,
      ),
    ];

    return Wrap(
      runSpacing: Dimens.space16,
      spacing: Dimens.space16,
      children: buttons
          .asMap()
          .entries
          .map(
            (element) => Wrap(
              children: [
                AnimatedTextStrikethrough(
                  text: element.value.title ?? "",
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(decoration: TextDecoration.underline),
                  textStyleHover: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w500),
                  duration: const Duration(milliseconds: 400),
                  onTap: () {
                    launchUrlString(element.value.url!);
                  },
                ),
                if (element.key < buttons.length - 1) ...{
                  SpacerH(value: Dimens.space16),
                  Text(
                    "/",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.normal),
                  ),
                }
              ],
            ),
          )
          .toList(),
    );
  }
}
