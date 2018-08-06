//
//  ViewController.swift
//  autolayout
//
//  Created by Vilar da Camara Neto on 05/08/18.
//  Copyright © 2018 Vilar da Camara Neto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstTerm: UITextField!
    @IBOutlet weak var secondTerm: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshResultLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func refreshResultLabel() {
        guard let firstTermText = firstTerm.text, let firstValue = Int(firstTermText), let secondTermText = secondTerm.text, let secondValue = Int(secondTermText) else {
            resultLabel.text = "Infelizmente não é possivel somar, pois os valores não são inteiros!"
            return
        }

        resultLabel.text = "A soma é \(firstValue + secondValue)."
    }

    @IBAction func termEditingChanged(_ sender: Any) {
        refreshResultLabel()
    }
}

