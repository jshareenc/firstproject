//
//  secondViewController.swift
//  app1
//
//  Created by Nathaniel Andrian on 07/07/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField.addTarget(self, action: #selector(valueChange), for: .editingChanged)
    }
    @objc func valueChange(textField: UITextField) {
        print(textField.text)
        if (textField.text?.count ?? 0 < 6) {
            print("Too little characters.")
            
            
        }
    }
    
}

extension SecondViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.count ?? 0 < 6) {
            return true
        } else {
            return false
        }
    }
}
