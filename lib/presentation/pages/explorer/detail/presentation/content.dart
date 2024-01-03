part of '../explorer_detail_page.dart';

class ContentWrapper extends StatelessWidget {
  const ContentWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Consumer<DetailController>(
          builder: (context, provider, _) {
            final l10n = context.l10n;
            final media = provider.media;
            if (provider.loading) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (provider.failure != null) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: CustomErrorWidget(
                  error: provider.failure!.localized(context),
                  backgroundColor: Colors.transparent,
                ),
              );
            }

            if (media == null) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 124, //NOTE could be done better
                ),
                child: EmptyWidget(
                  title: l10n.cannotFindDetail,
                  message: l10n.cannotFindDetailMessage,
                ),
              );
            }

            return _ContentLayout(media);
          },
        ),
      ),
    );
  }
}

class _ContentLayout extends StatelessWidget {
  const _ContentLayout(this.media);
  final MediaInformationDetail media;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        _MediaPicture(
          media.pictureUrl ?? '',
        ),
        const SizedBox(
          height: 8,
        ),
        _HeaderInformation(media),
        const SizedBox(
          height: 24,
        ),
        _OpenWebsiteButton(media.webUrl),
        Flexible(
          child: _TabBarWapper(
            tabs: [
              _DetailTab(l10n.synopsisTabTitle),
              _DetailTab(l10n.informationTabTitle),
            ],
            tabBarView: _TabViewContent(media),
          ),
        ),
      ],
    );
  }
}

class _MediaPicture extends StatelessWidget {
  const _MediaPicture(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: 170,
        height: 170,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              url,
            ),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 6,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderInformation extends StatelessWidget {
  const _HeaderInformation(this.media);
  final MediaInformationDetail media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          media.genre.toUpperCase(),
          style: context.textTheme.labelLarge!.copyWith(color: Palette.grey400),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          media.title,
          style: context.textTheme.titleMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.star,
              color: Palette.toastBackgroundOrange,
              size: 22,
            ),
            Text(
              media.imdbRating,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.date_range_outlined,
              color: Palette.grey600,
              size: 22,
            ),
            Text(
              media.released,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(
              width: 8,
            ),
            _CustomChip(
              child: Text(
                media.type.localized(context),
                style: context.textTheme.bodyMedium!.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CustomChip extends StatelessWidget {
  const _CustomChip({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: CustomPaint(
              painter: _CustomChipPainter(),
            ),
          ),
          AspectRatio(
            aspectRatio: 3 / 2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomChipPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Palette.primary.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final widthPortion = size.width / 15;
    final heightPortion = size.height / 5;

    final path = Path()
      ..moveTo(widthPortion, 0)
      ..lineTo(widthPortion * 9.25, 0)
      ..quadraticBezierTo(
        widthPortion * 9.75,
        0,
        widthPortion * 10,
        heightPortion * 0.125,
      )
      ..lineTo(widthPortion * 14, heightPortion * 2)
      ..quadraticBezierTo(
        widthPortion * 15,
        heightPortion * 2.5,
        widthPortion * 14,
        heightPortion * 3,
      )
      ..lineTo(widthPortion * 10, heightPortion * 4.875)
      ..quadraticBezierTo(
        widthPortion * 9.75,
        heightPortion * 5,
        widthPortion * 9.25,
        heightPortion * 5,
      )
      ..lineTo(widthPortion, heightPortion * 5)
      ..quadraticBezierTo(
        0,
        heightPortion * 5,
        0,
        heightPortion * 4.5,
      )
      ..lineTo(0, heightPortion * 0.5)
      ..quadraticBezierTo(
        0,
        0,
        widthPortion,
        0,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _OpenWebsiteButton extends StatelessWidget {
  const _OpenWebsiteButton(this.url);
  final String? url;
  @override
  Widget build(BuildContext context) {
    return Stack(
      //NOTE little trick to achieve design :') could be better
      children: [
        Positioned(
          top: 25,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 52,
            color: Palette.grey200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              onPressed: () {
                if (url != null) {
                  launchUrl(
                    Uri.parse(
                      url!,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    Toaster.warning(
                      title: context.l10n.noWebsiteAvailableSnackMessage,
                    ),
                  );
                }
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.link_rounded,
                    color: Palette.white,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    context.l10n.openWebsite,
                    style: context.textTheme.titleSmall!.copyWith(
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _TabBarWapper extends StatelessWidget {
  const _TabBarWapper({required this.tabs, required this.tabBarView});

  final List<Widget> tabs;

  /// THIS MUST BE A TABBARVIEW
  final Widget tabBarView;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Palette.grey200,
            ),
            child: TabBar(
              isScrollable: true,
              indicatorWeight: 0,
              padding: EdgeInsets.zero,
              labelPadding: const EdgeInsets.only(right: 12),
              labelColor: context.theme.primaryColor,
              labelStyle: context.theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle:
                  context.theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: context.theme.primaryColor,
                  ),
                ),
              ),
              tabs: tabs,
            ),
          ),
          Expanded(
            child: tabBarView,
          ),
        ],
      ),
    );
  }
}

class _DetailTab extends StatelessWidget {
  const _DetailTab(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Center(
        child: Text(label),
      ),
    );
  }
}

class _TabViewContent extends StatelessWidget {
  const _TabViewContent(this.media);
  final MediaInformationDetail media;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        _SynopsisTab(media),
        _InfoTab(media),
      ],
    );
  }
}

class _SynopsisTab extends StatelessWidget {
  const _SynopsisTab(this.media);
  final MediaInformationDetail media;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Palette.grey200,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            media.plot,
            style: context.textTheme.bodyMedium!.copyWith(height: 1.8),
          ),
        ),
      ),
    );
  }
}

class _InfoTab extends StatelessWidget {
  const _InfoTab(this.media);
  final MediaInformationDetail media;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ColoredBox(
      color: Palette.grey200,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Card(
              elevation: 3,
              color: Palette.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 40,
                    color: Palette.blueInfo.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            color: Palette.blueInfo,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            media.director,
                            style: context.textTheme.titleSmall!.copyWith(
                              color: Palette.blueInfo,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.pegiRatingLabel.toUpperCase(),
                              style: context.textTheme.labelLarge!.copyWith(
                                color: Palette.grey500,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(media.rated),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.movieLengthTitle.toUpperCase(),
                              style: context.textTheme.labelLarge!.copyWith(
                                color: Palette.grey500,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(media.runtime),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.movieLanguageTitle.toUpperCase(),
                              style: context.textTheme.labelLarge!.copyWith(
                                color: Palette.grey500,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ...List.generate(
                              media.language.split(',').length,
                              (index) => Text(
                                media.language.split(',')[index].trim(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.movieActorTitle.toUpperCase(),
                          style: context.textTheme.labelLarge!.copyWith(
                            color: Palette.grey500,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ...List.generate(
                          media.actors.split(',').length,
                          (index) => Text(
                            media.actors.split(',')[index].trim(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
