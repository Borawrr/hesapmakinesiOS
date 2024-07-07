//
//  ViewController.swift
//  hesapmakinesi
//
//  Created by Bora Tekin on 7.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var topNum: UITextField!
    
    @IBOutlet weak var botNum: UITextField!
    
    @IBOutlet weak var sumNum: UITextField!
    
    @IBOutlet weak var errorView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func plus(_ sender: Any) {
        
        guard let topText = topNum.text, !topText.isEmpty else {
            errorView.text = "Lütfen üst alana bir sayı girin."
            return
        }
        
        guard let botText = botNum.text, !botText.isEmpty else {
            errorView.text = "Lütfen alt alana bir sayı girin."
            return
        }
        
        if let firstNumber = Int(topText), let secondNumber = Int(botText) {
            let sumNumber = firstNumber + secondNumber
            sumNum.text = String(sumNumber)
            errorView.text = ""
        } else {
            errorView.text = "Lütfen geçerli sayılar girin."
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        guard let topText = topNum.text, !topText.isEmpty else {
            errorView.text = "Lütfen üst alana bir sayı girin."
            return
        }
        
        guard let botText = botNum.text, !botText.isEmpty else {
            errorView.text = "Lütfen alt alana bir sayı girin."
            return
        }
        
        if let firstNumber = Int(topText), let secondNumber = Int(botText) {
            let sumNumber = firstNumber - secondNumber
            sumNum.text = String(sumNumber)
            errorView.text = ""
        } else {
            errorView.text = "Lütfen geçerli sayılar girin."
        }
    }
    
    
    @IBAction func multiply(_ sender: Any) {
        guard let topText = topNum.text, !topText.isEmpty else {
            errorView.text = "Lütfen üst alana bir sayı girin."
            return
        }
        
        guard let botText = botNum.text, !botText.isEmpty else {
            errorView.text = "Lütfen alt alana bir sayı girin."
            return
        }
        if let firstNumber = Int(topText), let secondNumber = Int(botText) {
            let sumNumber = firstNumber * secondNumber
            sumNum.text = String(sumNumber)
            errorView.text = ""
        } else {
            errorView.text = "Lütfen geçerli sayılar girin."
        }
    }
    
    
    @IBAction func divide(_ sender: Any) {
        guard let topText = topNum.text, !topText.isEmpty else {
            errorView.text = "Lütfen üst alana bir sayı girin."
            return
        }
        
        guard let botText = botNum.text, !botText.isEmpty else {
            errorView.text = "Lütfen alt alana bir sayı girin."
            return
        }
        if let firstNumber = Float(topText), let secondNumber = Float(botText) {
            let sumNumber = firstNumber / secondNumber
            sumNum.text = String(sumNumber)
            errorView.text = ""
        } else {
            errorView.text = "Lütfen geçerli sayılar girin."
        }    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
    
    
    
    
    
    
    
    
    
    

    
    
  

