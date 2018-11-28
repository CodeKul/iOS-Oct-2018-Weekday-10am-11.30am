//
//  ViewController.swift
//  CustomTableViewDemo
//
//  Created by Apple on 27/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var players: [Player]! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        players.append(Player(name: "Sachin Tendulkar", skill: "Batsman", teamName: "MI", imageName: "sachin.jpg"))
        players.append(Player(name: "Mahendar singh Dhoni", skill: "Keeper", teamName: "CSK", imageName: "dhoni.jpg"))
        players.append(Player(name: "Rohit Sharma", skill: "Batsman", teamName: "MI", imageName: "rohit.jpeg"))
        players.append(Player(name: "Virat Kohli", skill: "Batsman", teamName: "RCB", imageName: "virat.jpeg"))
        players.append(Player(name: "Yuvraj Singh", skill: "All rounder", teamName: "KXIP", imageName: "yuvraj.jpg"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        let player = players[indexPath.row]
        cell.setData(name: player.name, skill: player.skill, teamName: player.teamName, imageName: player.imageName)
        return cell
    }
}

