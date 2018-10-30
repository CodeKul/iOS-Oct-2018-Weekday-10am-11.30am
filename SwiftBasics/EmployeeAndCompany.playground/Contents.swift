//: Playground - noun: a place where people can play

import UIKit

class Company {
    
    var name: String
    var employees: [Employee]
    
    init(name: String, employees: [Employee]) {
        self.name = name
        self.employees = employees
    }
    
    func display() {
        print("Name: \(self.name)")
        print("Employees:")
        for emp in employees {
            emp.display()
            print("")
        }
    }
    
    func raiseTheSalary() {
        for emp in self.employees {
            emp.raiseTheSalary()
        }
    }
}

class Employee {
    var name: String
    var id: String
    var salary: Double
    var raise: Double
    
    init(name: String, id: String, salary: Double, raise: Double) {
        self.name = name
        self.id = id
        self.salary = salary
        self.raise = raise
    }
    
    func display() {
        print("Id: \(self.id)")
        print("Name: \(self.name)")
        print("Salary: \(self.salary)")
    }
    
    func raiseTheSalary() {
        self.salary *= self.raise
    }
}

class Manager: Employee {
    var projects: [String]
    
    init(name: String, id: String, salary: Double, raise: Double, projects: [String]) {
        self.projects = projects
        super.init(name: name, id: id, salary: salary, raise: raise)
    }
    
    override func display() {
        super.display()
        print("Projects: ")
        for project in self.projects {
            print(project)
        }
    }
}

class Developer: Employee {
    var tasks: [String]
    init(name: String, id: String, salary: Double, raise: Double, tasks: [String]) {
        self.tasks = tasks
        super.init(name: name, id: id, salary: salary, raise: raise)
    }
    
    override func display() {
        super.display()
        print("Tasks: ")
        for task in self.tasks {
            print(task)
        }
    }
}

var manager = Manager(name: "Varun", id: "123", salary: 10000, raise: 1.5, projects: ["Project 1", "Prject 2", "Project 3"])
var dev1 = Developer(name: "Chetan", id: "456", salary: 1500, raise: 1.4, tasks: ["Task 1", "Task 2"])
var dev2 = Developer(name: "Indira", id: "789", salary: 2000, raise: 1.36, tasks: ["Task 123", "Task 788", "Task 754"])

var codekul = Company(name: "Codekul", employees: [manager, dev1, dev2])

codekul.display()


