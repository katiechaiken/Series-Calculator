//
//  ArithViewController.swift
//  Series Calculator
//
//  Created by Katie Chaiken on 12/10/16.
//  Copyright © 2016 Katie Chaiken. All rights reserved.
//

import UIKit
import Darwin

class ArithViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var lastNum: UITextField!
    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var commonDifference: UITextField!
    @IBOutlet weak var sum: UILabel!
    @IBOutlet weak var sequenceTerms: UILabel!
    @IBAction func numTerms(_ sender: AnyObject) {
        let last = Double(lastNum.text!)
        let first = Double(firstNum.text!)
        let difference = Double(commonDifference.text!)
        let number = ((last! - (first! - difference!)) / difference!)
        sequenceTerms.text = "\(number)"
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false}
    @IBAction func calculateSum(_ sender: AnyObject) {
        let last = Double(lastNum.text!)
        let first = Double(firstNum.text!)
        let difference = Double(commonDifference.text!)
        let number = ((last! - (first! - difference!)) / difference!)
        let sumTotal = ((number) * (Double(lastNum.text!)! + Double(firstNum.text!)!) * (0.5))
        textFieldShouldReturn(textField: lastNum)
        textFieldShouldReturn(textField: firstNum)
        textFieldShouldReturn(textField: commonDifference)
        sum.text = "\(sumTotal)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
