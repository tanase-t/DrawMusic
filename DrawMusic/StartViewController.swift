//
//  StartViewController.swift
//  DrawMusic
//
//  Created by 棚瀬達央 on 9/8/16.
//  Copyright © 2016 sheltt913. All rights reserved.
//

import Foundation

import UIKit
import SpriteKit

class StartViewController: UIViewController {

    @IBOutlet weak var skView: SKView!

    override func viewDidLoad() {
        super.viewDidLoad()
        skView.showsFPS = true
        skView.showsNodeCount = true
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let scene = PlayScene(size: skView.bounds.size)
        skView.presentScene(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
