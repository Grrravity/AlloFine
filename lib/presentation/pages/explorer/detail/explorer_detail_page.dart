import 'package:allofine/core/extentions/build_context_ext.dart';
import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/core/theme/theme.dart';
import 'package:allofine/domain/entities/media_information_detail.dart';
import 'package:allofine/domain/usecase/media_information_usecase.dart';
import 'package:allofine/presentation/localization/object_to_arb.dart';
import 'package:allofine/presentation/pages/explorer/detail/controller/detail_controller.dart';
import 'package:allofine/presentation/widgets/empty_widget.dart';
import 'package:allofine/presentation/widgets/error_widget.dart';
import 'package:allofine/presentation/widgets/toastbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

part 'presentation/appbar_painter.dart';
part 'presentation/content.dart';

class ExplorerDetailPage extends StatelessWidget {
  const ExplorerDetailPage({super.key, required this.id});

  static const String routeName = 'detail';
  static const String idPathParam = 'imdbID';
  final String id;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DetailController(
        getIt<MediaInformationUsecase>(),
        id: id,
      )..init(),
      child: const Scaffold(
        body: Stack(
          children: [
            AppBarBackground(),
            _BackButton(),
            ContentWrapper(),
          ],
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 24),
        child: IconButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Palette.white),
          ),
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
