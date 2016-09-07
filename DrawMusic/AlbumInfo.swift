//
//  AlbumInfo.swift
//  DrawMusic
//
//  Created by 棚瀬達央 on 9/7/16.
//  Copyright © 2016 sheltt913. All rights reserved.
//

import Foundation
import MediaPlayer

class AlbumInfo {

    struct Song {
        var title: String?
        var artistName: String?
        var songId: NSNumber?
    }
    var title: String
    var songs: [Song]

    init(title: String, songs: [Song]){
        self.title = title
        self.songs = songs
    }

    static func get() -> [AlbumInfo]{

        // アルバム情報から曲を取り出す
        let albumsQuery: MPMediaQuery = MPMediaQuery.albumsQuery()
        guard let collections = albumsQuery.collections else {
            return []
        }
        let albumItems = collections as [MPMediaItemCollection]

        var albums: [AlbumInfo] = []
        for album in albumItems {
            let albumItems: [MPMediaItem] = album.items as [MPMediaItem]
            var songs: [Song] = []
            var albumTitle = ""
            for song in albumItems {
                albumTitle = song.valueForProperty( MPMediaItemPropertyAlbumTitle ) as? String ?? ""
                let songInfo: Song = Song(
                    title: song.valueForProperty( MPMediaItemPropertyTitle ) as? String,
                    artistName: song.valueForProperty( MPMediaItemPropertyArtist ) as? String,
                    songId: song.valueForProperty( MPMediaItemPropertyPersistentID ) as? NSNumber
                )
                songs.append( songInfo )
            }

            albums.append( AlbumInfo(title: albumTitle,songs: songs) )
        }

        return albums

    }
}