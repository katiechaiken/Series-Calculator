//
//  GeoViewController.swift
//  Series Calculator
//
//  Created by Katie Chaiken on 12/10/16.
//  Copyright © 2016 Katie Chaiken. All rights reserved.
//

import UIKit
import Darwin

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Double, power: Double) -> Double {
    return Double(pow(Double(radix), Double(power)))
}
class GeoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var commonRatio: UITextField!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var firstTerm: UITextField!
    @IBOutlet weak var numTerm: UITextField!
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false}
    @IBAction func calculate(_ sender: AnyObject) {
        let ratio = Double(commonRatio.text!)
        let first = Double(firstTerm.text!)
        let totalTerm = Double(numTerm.text!)
        let raise = pow(ratio!, totalTerm!)
        let calc = (((first! * raise) - first!) / (ratio! - 1))
        if(ratio != 1)
        {
            textFieldShouldReturn(textField: numTerm)
            textFieldShouldReturn(textField: numTerm)
            textFieldShouldReturn(textField: commonRatio)
            finalLabel.text = "\(calc)"
        }
        else if (ratio == 1)
        {
            var ratioOne = (first! * totalTerm!)
            textFieldShouldReturn(textField: numTerm)
            textFieldShouldReturn(textField: numTerm)
            textFieldShouldReturn(textField: commonRatio)
            finalLabel.text = ("\(ratioOne)")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
