//
//  HomeScreen.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(UserDetailTableViewCell.self, forCellReuseIdentifier: UserDetailTableViewCell.identifier)
        
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame )
        self.configBackGroud()
        self.configSuperView()
        
        //---------------------------------
        self.configTableViewConstraint()
        //---------------------------------
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    private func configBackGroud(){
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        self.addSubview(self.tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    private func setUpContraints() {
//        NSLayoutConstraint.activate([
//            self.tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
//            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
//            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
//            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
//        ])
//    }
    
    private func configTableViewConstraint() {
        self.tableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
    }
    
}
