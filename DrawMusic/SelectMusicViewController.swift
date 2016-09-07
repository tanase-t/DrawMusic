//
//  SelectMusicViewController.swift
//  DrawMusic
//
//  Created by 棚瀬達央 on 9/7/16.
//  Copyright © 2016 sheltt913. All rights reserved.
//

import Foundation
import UIKit

class SelectMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var albumInfo: [AlbumInfo] = []

    @IBOutlet weak var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        albumInfo = AlbumInfo.get()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albumInfo[section].songs.count
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return albumInfo.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = self.tableview.dequeueReusableCellWithIdentifier("MusicTableCell", forIndexPath: indexPath) as? MusicTableCell else {
            return UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }

        let song = albumInfo[indexPath.section].songs[indexPath.row]
        cell.title.text = song.title
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
}