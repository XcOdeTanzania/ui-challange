import 'package:flutter/foundation.dart';
import 'package:scoped_model/scoped_model.dart';

mixin ConnectedDotifyModel on Model {}
mixin UserModel on ConnectedDotifyModel {}
mixin AlbumModel on ConnectedDotifyModel {}
mixin SongModel on ConnectedDotifyModel {}
mixin PlayListModel on ConnectedDotifyModel {}
mixin ArtistModel on ConnectedDotifyModel {}
mixin UtilityModel on ConnectedDotifyModel {
  int _selectedCategoryIndex = 0;

  int _selectedGenreIndex;

  int get selectedCategoryIndex => _selectedCategoryIndex;
  int get selectedGenreIndex => _selectedGenreIndex;

  void setSelectedCategoryIndex({@required index}) {
    _selectedCategoryIndex = index;
    notifyListeners();
  }

  void setSelectedGenreIndex({@required index}) {
    _selectedGenreIndex = index;
    notifyListeners();
  }
}
