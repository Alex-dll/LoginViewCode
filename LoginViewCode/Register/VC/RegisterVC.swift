//
//  RegisterVC.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
    }

}

extension RegisterVC: RegisterScreenProtocol {
    func tappedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tappedRegisterbutton() {
        print("Register")
    }
    
    
}

extension RegisterVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
