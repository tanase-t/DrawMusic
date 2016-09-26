//
//  PlayScene.swift
//  DrawMusic
//
//  Created by 棚瀬達央 on 9/26/16.
//  Copyright © 2016 sheltt913. All rights reserved.
//

import Foundation
import SpriteKit

class PlayScene: SKScene, SKPhysicsContactDelegate {

    var initiated: Bool = false

    override func didMoveToView(view: SKView) {
        if ( !initiated ) { //初期化時のみ実行
            self.initContent()
            self.initiated = true
        }
    }

    func initContent(){
        self.backgroundColor = SKColor.blueColor() // 背景色設定
        let label = self.newHelloNode() // テキストノードの作成
        self.addChild(label) // sceneにテキストノードを追加
    }

    func newHelloNode() -> SKLabelNode {
        let helloNode = SKLabelNode(text: "Hello, World!")
        helloNode.fontColor = UIColor(red: 1.0, green:1.0, blue: 1.0, alpha: 1)
        helloNode.fontSize = 60
        helloNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))

        return helloNode
    }

    override func update(currentTime: NSTimeInterval) {
        super.update(currentTime)
    }
}