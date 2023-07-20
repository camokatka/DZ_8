//
//  ViewController.swift
//  DZ_8
//
//  Created by Elizabeth Serykh on 20.07.2023.
//

import UIKit


class User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

class ViewController: UIViewController {

    
    
    private var username = ""
    private var password = ""
    
    @IBOutlet weak var loginTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var authorizationTextField: UITextField!
    

    
    @IBAction func okButtonTaped(_ sender: Any) {
        
        let user1 = User(username: "liza1988", password: "12345678")
        
        let user2 = User(username: "mike_ivanov", password: "ivanovmike")
        
        let user3 = User(username: "crazyfrog", password: "frog0000")
        
        var users = [user1, user2, user3]
        
        username = loginTextField.text!
        password = passwordTextField.text!
        
        if username.count < 3 || password.count < 6 {
            
            let alert = UIAlertController(title: "Проверьте данные!", message: "Логин должен быть не меньше 3-x символов, а пароль - не меньше 6", preferredStyle: .alert)
            
            let actionOne = UIAlertAction(title: "ОК", style: .destructive)
            { action in
                ()
                
            }
            
            alert.addAction(actionOne)
            
            present(alert, animated: true)
            
            authorizationTextField.text = ""
        } else {
            
            
            
            var flag = false
            
            for user in users {
                if user.username == username && user.password == password {
                    
                    flag = true
                    authorizationTextField.text = "Успешно!"
                    authorizationTextField.textColor = .green
                    
                    break
                }
            }
            
            if !flag {
                
                authorizationTextField.text = "Неправильно введены данные"
                authorizationTextField.textColor = .red
            }
            
            
        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

