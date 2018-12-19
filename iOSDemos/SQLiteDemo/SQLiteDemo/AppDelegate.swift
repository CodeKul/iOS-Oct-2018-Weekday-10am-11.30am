//
//  AppDelegate.swift
//  SQLiteDemo
//
//  Created by Apple on 19/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import SQLite3

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var db: OpaquePointer?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        createDB()
        
        return true
    }
    
    func createDB() {
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("student.sqlite")
        
        print(fileURL.absoluteString)
        // open database
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Student (roll_no INTEGER, name TEXT, marks INTEGER)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
        else {
            print("table created!")
        }
    }
    
    func executeQuery(_ str : String) -> Bool {
        var result : Bool = false
        var stmt : OpaquePointer? = nil
        let strExec = str.cString(using: String.Encoding.utf8)
        
        if (sqlite3_prepare_v2(db, strExec! , -1, &stmt, nil) == SQLITE_OK) {
            if (sqlite3_step(stmt) == SQLITE_DONE) {
                result = true
            }
        }
        else {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error while inserting: \(errmsg)")
        }
        sqlite3_finalize(stmt)
        return result
    }
    
    func selectQuery(_ str:String) -> Array<Dictionary<String,Any>> {
        var result : Array<Dictionary<String,Any>> = []
        var stmt : OpaquePointer? = nil
        
        let strExec = str.cString(using: String.Encoding.utf8)
        
        if (sqlite3_prepare_v2(db, strExec! , -1, &stmt, nil) == SQLITE_OK) {
            while (sqlite3_step(stmt) == SQLITE_ROW) {
                var i : Int32 = 0
                let icount : Int32 = sqlite3_column_count(stmt)
                
                var dict = Dictionary<String, Any>()
                
                while i < icount {
                    let strF = sqlite3_column_name(stmt, i)
                    let strV = sqlite3_column_text(stmt, i)
                    
                    let rFiled : String = String(cString: strF!)
                    let rValue : String = String(cString: strV!)
                    
                    dict[rFiled] = rValue
                    i += 1
                }
                result.insert(dict, at: result.count)
            }
            sqlite3_finalize(stmt)
        }
        return result
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

