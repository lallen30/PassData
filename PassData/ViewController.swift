//
//  ViewController.swift
//  PassData
//
//  Created by Larry Allen on 8/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Tutorial: https://www.youtube.com/watch?v=tIrhzByaA14
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = textField.text!
        vc?.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}


extension ViewController: PassDataToVC {
    func passData(str: String) {
        textField.text = str
    }
    
}
