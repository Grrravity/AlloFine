import 'package:allofine/core/error/failure.dart';
import 'package:allofine/domain/entities/media_information.dart';
import 'package:allofine/domain/entities/pagination.dart';
import 'package:allofine/domain/usecase/media_information_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ExplorerController with ChangeNotifier {
  ExplorerController(this._mediaInformationUsecase);

  final MediaInformationUsecase _mediaInformationUsecase;

  String _searchQuery = '';
  int _resultCount = 0;
  final PagingController<int, MediaInformation> _pagingController =
      PagingController<int, MediaInformation>(firstPageKey: 1);

  String get searchQuery => _searchQuery;
  int get resultCount => _resultCount;
  PagingController<int, MediaInformation> get pagingController =>
      _pagingController;

  void setSearchQuery(String input) {
    _searchQuery = input;
    notifyListeners();
  }

  void searchElement() => pagingController.refresh();

  void resetPagingController() {
    setSearchQuery('');
    pagingController.refresh();
  }

  void buildTabsPagingController() {
    _pagingController.addPageRequestListener((pageKey) async {
      if (_searchQuery == '') {
        pagingController.appendLastPage([]);
        return;
      }
      final mediaOrFailure = await _mediaInformationUsecase.searchMedia(
        searchQuery: _searchQuery,
        paginationRequest: PaginationRequest(page: pageKey),
      );

      mediaOrFailure.fold(
        _notifyFailure,
        (requests) {
          _pagingController.error = null;
          _setCount(requests.pagination.total);
          if (requests.data.length < 10) {
            pagingController.appendLastPage(requests.data);
            return;
          }

          pagingController.appendPage(
            requests.data,
            pageKey + 1,
          );
        },
      );
    });
  }

  void _notifyFailure(Failure failure) {
    _resultCount = 0;
    _pagingController.error = failure;
    notifyListeners();
  }

  void _setCount(int count) {
    _resultCount = count;
    notifyListeners();
  }
}
