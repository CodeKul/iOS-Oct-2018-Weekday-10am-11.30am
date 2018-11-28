//
//  Player.swift
//  CustomTableViewDemo
//
//  Created by Apple on 27/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var skill: String
    var teamName: String
    var imageName: String
    
    init(name: String, skill: String, teamName: String, imageName: String) {
        self.name = name
        self.skill = skill
        self.teamName = teamName
        self.imageName = imageName
    }
}
