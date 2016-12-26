//
//  ViewController.swift
//  Calc
//
//  Created by 高橋真未 on 2016/12/26.
//  Copyright © 2016年 高橋真未. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber = ""
    var kigou = ""
    var secondNumber = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func oneButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "1"
    }
    
    @IBAction func twoButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "2"
    }
    
    @IBAction func thereeButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "3"
    }
    @IBAction func fourButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "4"
    }
    @IBAction func fiveButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "5"
    }
    @IBAction func sixButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "6"
    }
    @IBAction func sevenButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "7"
    }
    
    @IBAction func eightButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "8"
    }
    
    @IBAction func nineButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "9"
    }
    
    @IBAction func zeroButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "0"
    }
    
    @IBAction func PointButtonPushdown(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "."
    }
    
    @IBAction func pulasButtonPushdown(_ sender: UIButton) {
        kigou = "+"
        firstNumber = resultLabel.text!
        resultLabel.text = ""
    }
    
    @IBAction func minusPushdown(_ sender: UIButton) {
        kigou = "-"
        firstNumber = resultLabel.text!
        resultLabel.text = ""
    }
    
    @IBAction func PlayButtonPushdown(_ sender: UIButton) {
        kigou = "×"
        firstNumber = resultLabel.text!
        resultLabel.text = ""
    }
    
    @IBAction func BreakButtonPushdown(_ sender: UIButton) {
        kigou = "÷"
        firstNumber = resultLabel.text!
        resultLabel.text = ""
    }
    
    
    @IBAction func equalButtonPushdown(_ sender: UIButton) {
        secondNumber = resultLabel.text!
        var x:Double = NSString(string: firstNumber).doubleValue
        var y:Double = NSString(string: secondNumber).doubleValue
        var z:Double = 0
        
//        if kigou == "+"  {
//        z = x + y
//            var answer: String = NSString(format: "%.1f", z) as String
//            resultLabel.text = answer
//        }else if kigou == "-" {
//            z = x - y
//            var answer: String = NSString(format: "%.1f", z) as String
//            resultLabel.text = answer
//        }else if kigou == "×" {
//            z = x * y
//            var answer: String = NSString(format: "%.1f", z) as String
//            resultLabel.text = answer
//        }else {
//            z = x / y
//            var answer: String = NSString(format: "%.1f", z) as String
//            resultLabel.text = answer
//        
//        }
//    }

        switch kigou {
        case "+":
            z = x + y
            
        case "-":
            z = x - y
            
        case "×":
            z = x * y

        case "÷":
            z = x / y
        
        default: break
        }
        
        var answer: String = NSString(format: "%.1f", z) as String
        resultLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
