//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var loginLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.view.addSubview(self.loginLabel)
        self.setUpContraintes() 
    }
    
    private func setUpContraintes(){
        
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

