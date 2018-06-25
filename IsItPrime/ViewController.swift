//
//  ViewController.swift
//  IsItPrime
//
//  Created by Adam Moore on 3/16/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberInputted: UITextField!
    
    @IBOutlet weak var isItPrimeLabel: UILabel!
    
    func testForPrimality(with thisNumber: Int) -> Bool {
        var isPrime = true
        var i = 2
        // Anything greater than 2 goes through loop, as 1 and 2 are both prime, so "isPrime" remains "true"
        while i < thisNumber {
            if thisNumber % i == 0 {
                isPrime = false
            }
            i += 1
        }
        return isPrime
    }
    
    func isItPrime() {
        if let inputtedText = numberInputted.text {
            if let inputtedNumber = Int(inputtedText) {
                
                if inputtedNumber > 0 {
                    
                    if testForPrimality(with: inputtedNumber) == true {
                        isItPrimeLabel.text = "\(inputtedNumber) is prime!"
                    } else {
                        isItPrimeLabel.text = "\(inputtedNumber) is not prime, sorry."
                    }
                    
                } else {
                    isItPrimeLabel.text = "You have to enter a POSITIVE number."
                }
                
            } else if !inputtedText.isEmpty {
                isItPrimeLabel.text = "You have to enter a number, not a letter or word."
            } else {
                isItPrimeLabel.text = "You have to enter a number first."
            }
        }
//        if numberInputted.text == nil {
//            isItPrimeLabel.text = "You have to enter a number first."
//        } else if numberInputted.text != nil && Int(numberInputted.text!) == nil{
//            isItPrimeLabel.text = "You have to enter a number, not a letter or word."
//        } else if let numberToTest = Int(numberInputted.text!) {
//            if testForPrimality(with: numberToTest) == true {
//                isItPrimeLabel.text = "\(numberToTest) is prime!"
//            } else {
//                isItPrimeLabel.text = "\(numberToTest) is not prime, sorry."
//            }
//        } else {
//            isItPrimeLabel.text = "This should never show because all other possibilities are considered."
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func primeButtonPressed(_ sender: UIButton) {
        isItPrime()
    }
    
}

