import 'package:scoped_model/scoped_model.dart';

import 'dotify_connected_model.dart';

class MainModel extends Model
    with
        ConnectedDotifyModel,
        UserModel,
        UtilityModel,
        AlbumModel,
        SongModel,
        PlayListModel,
        ArtistModel {}
