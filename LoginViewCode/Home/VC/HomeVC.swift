//
//  HomeVC.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    var data:[DataUser] = [DataUser(name: "Alex", nameImage: "menino1"),
                           DataUser(name: "Felipe", nameImage: "menino2"),
                           DataUser(name: "Mariana", nameImage: "menina1")
    
    ]
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }
}


extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setUpCell(data: self.data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
