//
//  PlayersViewControllerTableViewController.swift
//  Ratings
//
//  Created by user909680 on 3/12/18.
//  Copyright © 2018 user909680. All rights reserved.
//

import UIKit

class PlayersViewControllerTableViewController: UITableViewController {

    // MARK: - Properties
    var players = SampleData.generatePlayersData()
}

// MARK: - UITableViewDataSource
extension PlayersViewControllerTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCellTableViewCell
        
        let player = players[indexPath.row]
        cell.player = player
        return cell
    }
}

// MARK: - IBActions
extension PlayersViewControllerTableViewController {

  @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
  }

    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {

      guard let playerDetailsViewController = segue.source as? PlayerDetailsViewController,
        let player = playerDetailsViewController.player else {
          return
      }
        
      // add the new player to the players array
      players.append(player)
        
      // update the tableView
      let indexPath = IndexPath(row: players.count - 1, section: 0)
      tableView.insertRows(at: [indexPath], with: .automatic)
    }
}
