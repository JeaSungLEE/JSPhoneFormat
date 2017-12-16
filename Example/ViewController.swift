//
//  ViewController.swift
//  Example
//
//  Created by 이재성 on 16/12/2017.
//  Copyright © 2017 이재성. All rights reserved.
//

import UIKit
import JSPhoneFormat

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    let phoneFormat = JSPhoneFormat.init(appenCharacter: "-")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        guard let text = textField.text else { return }
        textField.text = phoneFormat.addCharacter(at: text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

