//
//  ViewController.swift
//  UITableSwiftUIViewCell
//
//  Created by insub on 2023/05/17.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }

    func setTableView() {
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableSwiftUIViewCell<TableCellView>()
        cell.set(rootView: TableCellView(person: dataSource.people[indexPath.row]))
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.people.count
    }
}

class DataSource {
    
    var people: [Person] = [
        Person(emoji: "😃", name: "Kim", age: 12),
        Person(emoji: "😁", name: "Lee", age: 32),
        Person(emoji: "🥹", name: "Park", age: 54),
        Person(emoji: "🙂", name: "Woo", age: 22),
        Person(emoji: "😂", name: "Ma", age: 33),
        Person(emoji: "🤣", name: "Leo", age: 22),
        Person(emoji: "😇", name: "Andy", age: 55),
        Person(emoji: "😊", name: "Woody", age: 11)
    ]
    
    struct Person {
        let emoji: String
        let name: String
        let age: Int
    }
}
