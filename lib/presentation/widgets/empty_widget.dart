import 'package:allofine/core/theme/theme.dart';
import 'package:allofine/presentation/localization/l10n.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    required this.message,
    this.title,
  });
  final String? title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            RichText(
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '${title ?? context.l10n.emptyDefaultMessage}\r\n\r\n',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: message,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Palette.grey500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
