//
//  ViewController.swift
//  Calc
//
//  Created by 高橋真未 on 2016/12/26.
//  Copyright © 2016年 高橋真未. All rights reserved.
//

import UIKit

//ボタンのカスタムクラス
@IBDesignable class BorderedButton: UIButton{
    
    //枠線の色設定
    @IBInspectable var borderColor: UIColor? {
        get {return UIColor(cgColor: layer.borderColor!)}
        set {layer.borderColor = newValue?.cgColor ?? nil}
    }
    
    //枠線の幅設定
    @IBInspectable public var borderWidth: CGFloat = 1.0 {
        didSet{
            self.layer.borderWidth = self.borderWidth
        }
    }
}

//電卓機能部
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
    
    @IBAction func clearAllPushdown(_ sender: UIButton) {
        firstNumber=""
        secondNumber=""
        kigou=""
        resultLabel.text=""
    }
    
    @IBAction func clearEntryPushdown(_ sender: UIButton) {
        if resultLabel.text == "" {
            resultLabel.text = ""
        }else{
        let fixBeforNumber : String = resultLabel.text!
        let nokosuIndex : Int = (resultLabel.text?.characters.count)!
        let fixIndex : Int = nokosuIndex - 1
        resultLabel.text = fixBeforNumber.substring(to: (fixBeforNumber.index((fixBeforNumber.startIndex), offsetBy: fixIndex)))
        }
        }
    
    @IBAction func equalButtonPushdown(_ sender: UIButton) {
        secondNumber = resultLabel.text!
        var x:Double = NSString(string: firstNumber).doubleValue
        var y:Double = NSString(string: secondNumber).doubleValue
        var z:Double = 0
        
////        if kigou == "+"  {
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
////            if y == 0 {
////                resultLabel.text = ""
////            }else {
//            z = x / y
//            var answer: String = NSString(format: "%.1f", z) as String
//            resultLabel.text = answer
//            }
//        }


        switch kigou {
        case "+":
            z = x + y
            
        case "-":
            z = x - y
            
        case "×":
            z = x * y

        case "÷":
            z = x / y
        
        default:break
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


















