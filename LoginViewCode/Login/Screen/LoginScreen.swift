//
//  LoginScreen.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class LoginScreen: UIView {

    lazy var loginLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(loginLabel)
        self.setUpContraintes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpContraintes(){
        
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
