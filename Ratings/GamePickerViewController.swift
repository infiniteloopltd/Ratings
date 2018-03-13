//
//  GamePickerViewController.swift
//  Ratings
//
//  Created by Fiach Reid on 13/03/2018.
//  Copyright © 2018 user909680. All rights reserved.
//

import UIKit

class GamePickerViewController: UITableViewController {
 
    // MARK: - Properties
    var games = [
      "Angry Birds",
      "Chess",
      "Russian Roulette",
      "Spin the Bottle",
      "Texas Hold'em Poker",
      "Tic-Tac-Toe"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

}

// MARK: - UITableViewDataSource
extension GamePickerViewController {

  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    return games.count
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath)
    cell.textLabel?.text = games[indexPath.row]
    return cell
  }
}
