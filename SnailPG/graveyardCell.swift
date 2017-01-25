//
//  graveyardCell.swift
//  Snail Fantasy
//
//  Created by Ben Swanson on 1/23/17.
//  Copyright © 2017 Benjamin Swanson. All rights reserved.
//

import UIKit

class graveyardCell: UITableViewCell {
    
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var victoriesLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    var revivable = false
    var potionIndex: Int? = nil

    func configureCell(for hero: Hero) {
        heroNameLabel.text = hero.name
        levelLabel.text = "Level: \(hero.level)"
        jobLabel.text = "Job: \(hero.job!)"
        victoriesLabel.text = "Victories: \(hero.victories)"
        imageLabel.image = hero.icon as! UIImage?

        let backpack = hero.backpack as! [String]
        
        for i in 0..<backpack.count {
            if backpack[i] == "Revive Potion" {
                revivable = true
                potionIndex = i
            }
        }
    }

}
