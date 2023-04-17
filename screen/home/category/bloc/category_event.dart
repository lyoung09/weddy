class CategoryEvent {}

class InitCategoryEvent extends CategoryEvent {}

class GetSearchHistoryEvent extends CategoryEvent {}

class SearchCategoryEvent extends CategoryEvent {
  String searchText;
  SearchCategoryEvent({
    required this.searchText,
  });
}
