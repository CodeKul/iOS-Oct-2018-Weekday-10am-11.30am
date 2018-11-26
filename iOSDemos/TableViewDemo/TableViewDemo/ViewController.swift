//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Apple on 26/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["Red", "Green", "Blue", "Yellow", "Magenta", "Cyan", "Gray", "White", "Black"]
    var names = ["Chetan", "Indira", "Deepak", "Rahul", "Vijay", "Rao", "Jaitri", "Nkhil", "John", "Aniruddha", "Abhijeet", "Varun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return colors.count
        }
        else {
            return names.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Colors"
        }
        else {
            return "Names"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if indexPath.section == 0 {
            cell?.textLabel?.text = colors[indexPath.row]
            cell?.detailTextLabel?.text = "Color-\(indexPath.row+1)"
        }
        else {
            cell?.textLabel?.text = names[indexPath.row]
            cell?.detailTextLabel?.text = "Name-\(indexPath.row+1)"
        }
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print(colors[indexPath.row])
        }
        else {
            print(names[indexPath.row])
        }
    }
}

