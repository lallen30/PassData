//
//  SecondViewController.swift
//  PassData
//
//  Created by Larry Allen on 8/1/21.
//

import UIKit

protocol PassDataToVC {
    func passData(str: String)
}

class SecondViewController: UIViewController {
    
    var data = ""
    var delegate: PassDataToVC!

    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondTextField.text = data
        print(data)
    }
    

    
    @IBAction func onClickBack(_ sender: UIButton) {
        delegate.passData(str: secondTextField.text!)
        navigationController?.popViewController(animated: true)
    }
    
}
