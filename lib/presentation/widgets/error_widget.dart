import 'package:allofine/core/extentions/build_context_ext.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.error,
    this.backgroundColor,
  });
  final String error;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Icon(
                Icons.heart_broken_outlined,
                size: 100,
              ),
            ),
            RichText(
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: context.l10n.errorDetaultMessage,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextSpan(
                    text: error,
                    //style du deuxieme élément
                    style: Theme.of(context).textTheme.bodyMedium,
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
