part of '../explorer_page.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<ExplorerController>().searchQuery;
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: CustomTextField(
        initialValue: value,
        onChanged: (value) =>
            context.read<ExplorerController>().setSearchQuery(value),
        textInputAction: TextInputAction.search,
        onInputActionPressed: () {
          context.read<ExplorerController>().searchElement();

          FocusManager.instance.primaryFocus?.unfocus();
        },
        textAlignVertical: TextAlignVertical.bottom,
        style: context.textTheme.bodyMedium,
        hintText: 'rechercher...',
        prefixIcon: GestureDetector(
          onTap: () {
            context.read<ExplorerController>().searchElement();

            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: const Icon(
              Icons.search,
              size: 17,
            ),
          ),
        ),
        sufixIcon: GestureDetector(
          onTap: () {
            context.read<ExplorerController>().resetPagingController();

            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: const Icon(
              Icons.close,
              size: 17,
            ),
          ),
        ),
      ),
    );
  }
}
