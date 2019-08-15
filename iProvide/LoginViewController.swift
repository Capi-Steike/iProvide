//
//  LoginViewController.swift
//  iProvide
//
//  Created by student on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textFieldUsuario: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldUsuario.delegate = self
        var tap1: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap1)
        textFieldSenha.delegate = self
        var tap2: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap2)
        
    }
    func dismissKeyboard(){
        textFieldUsuario.resignFirstResponder()
        textFieldSenha.resignFirstResponder()
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
