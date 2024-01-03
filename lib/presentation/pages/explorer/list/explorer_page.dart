import 'package:allofine/core/error/failure.dart';
import 'package:allofine/core/extentions/build_context_ext.dart';
import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/core/theme/theme.dart';
import 'package:allofine/domain/entities/media_information.dart';
import 'package:allofine/domain/usecase/media_information_usecase.dart';
import 'package:allofine/presentation/localization/object_to_arb.dart';
import 'package:allofine/presentation/pages/explorer/list/controller/explorer_controller.dart';
import 'package:allofine/presentation/widgets/dismiss_keyboard.dart';
import 'package:allofine/presentation/widgets/empty_widget.dart';
import 'package:allofine/presentation/widgets/error_widget.dart';
import 'package:allofine/presentation/widgets/form_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

part 'presentation/media_list.dart';
part 'presentation/search_bar.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({super.key});

  static const String routeName = 'explorer';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ExplorerController(getIt<MediaInformationUsecase>())
        ..buildTabsPagingController(),
      child: const DismissKeyboard(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Palette.grey200,
            body: Column(
              children: [
                SearchInput(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    child: MediaList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
