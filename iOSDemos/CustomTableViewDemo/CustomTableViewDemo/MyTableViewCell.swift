//
//  MyTableViewCell.swift
//  CustomTableViewDemo
//
//  Created by Apple on 27/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var skillLbl: UILabel!
    @IBOutlet var teamNameLbl: UILabel!
    @IBOutlet var playerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
    }
    
    func setData(name: String, skill: String, teamName: String, imageName: String) {
        
        nameLbl.text = name
        skillLbl.text = skill
        teamNameLbl.text = teamName
        playerImageView.image = UIImage(named: imageName)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
