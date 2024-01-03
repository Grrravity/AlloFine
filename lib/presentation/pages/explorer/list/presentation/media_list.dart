part of '../explorer_page.dart';

class MediaList extends StatelessWidget {
  const MediaList({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: Palette.grey150,
      onRefresh: () async => context.read<ExplorerController>().searchElement(),
      child: Consumer<ExplorerController>(
        builder: (context, provider, _) {
          final pagingError = provider.pagingController.error;
          final errorWidget = CustomErrorWidget(
            backgroundColor: Palette.grey200,
            error: ((pagingError is Failure)
                    ? pagingError
                    : Failure.elementNotFound)
                .localized(context),
          );
          final l10n = context.l10n;

          return PagedListView(
            pagingController: provider.pagingController,
            builderDelegate: PagedChildBuilderDelegate<MediaInformation>(
              noItemsFoundIndicatorBuilder: (_) => Center(
                child: EmptyWidget(
                  title: l10n.noResultTitle,
                  message: l10n.noResultMessage,
                ),
              ),
              noMoreItemsIndicatorBuilder: (_) => const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: _NothingToDisplay(),
              ),
              itemBuilder: (_, item, index) {
                {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (index == 0) ...[
                        SizedBox(
                          height: 28,
                          child: Text(
                            context.l10n.countSearchResults(
                              provider.resultCount,
                              provider.resultCount > 1,
                            ),
                            style: context.textTheme.labelLarge,
                          ),
                        ),
                        const Divider(color: Palette.grey300),
                      ],
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                          bottom: 6,
                        ),
                        child: _MediaAbstractCard(
                          item: item,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 92),
                        child: Divider(color: Palette.grey300),
                      ),
                    ],
                  );
                }
              },
              firstPageErrorIndicatorBuilder: (_) => errorWidget,
              newPageErrorIndicatorBuilder: (_) => errorWidget,
            ),
          );
        },
      ),
    );
  }
}

class _MediaAbstractCard extends StatelessWidget {
  const _MediaAbstractCard({required this.item});

  final MediaInformation item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  item.pictureUrl ?? '',
                ),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 3,
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: context.textTheme.bodyMedium,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: <TextSpan>[
                        TextSpan(
                          text: item.type.localized(context),
                        ),
                        const TextSpan(
                          text: ' | ', //NOTE Could be done cleaner
                        ),
                        TextSpan(text: item.year),
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

class _NothingToDisplay extends StatelessWidget {
  const _NothingToDisplay();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        context.l10n.noMoreResult,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: Palette.grey400),
      ),
    );
  }
}
