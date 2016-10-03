//
//  GameManager.swift
//  DrawMusic
//
//  Created by 棚瀬達央 on 10/3/16.
//  Copyright © 2016 sheltt913. All rights reserved.
//

import Foundation

class GameManager {

    let sharedManager: GameManager = GameManager()
    var music: Music!
    var backgroundVideo: Video? = nil
    var beatMap: BeatMap!

    func getRenderInfo() {

    }

    func setup(music: Music, map: BeatMap, video: Video? = nil){
        self.music = music
        self.beatMap = map
        self.backgroundVideo = video
    }

    func start(){
        MusicManager.shareManager.play()
    }

    func restart(){

    }

    func stop(){

    }

    func pause(){

    }

    func resume(){

    }

    func isHit(){

    }

    func isScrolled(){

    }

}