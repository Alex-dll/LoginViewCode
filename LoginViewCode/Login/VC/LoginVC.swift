//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    var auth: Auth?
    var alert: Alert?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert(controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginVC: LoginScreenProtocol {
    func actionLoginButton() {
        
        let vc: HomeVC = HomeVC()
        self.navigationController?.pushViewController(vc, animated: true)
        
//        guard let login = self.loginScreen else { return }
//
//        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { (usuario, error ) in
//
//            if error != nil {
//                self.alert?.getAlert(title: "Atenção", message: "Dados incorretor, verifique e tente novamente")
//            } else {
//                if usuario == nil {
//                    self.alert?.getAlert(title: "Atenção", message: "Tivemos um problema inesperado, tente novamente mais tarde")
//                } else {
//                    self.alert?.getAlert(title: "Parabéns", message: "Logado com sucesso")
//                }
//            }
//        })
    }
    
    func actionRegisterButton() {
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension LoginVC: UITextFieldDelegate {    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginScreen?.validateTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

