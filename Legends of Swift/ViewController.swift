//
//  ViewController.swift
//  Legends of Swift
//
//  Created by Kathryn Tatum on 5/2/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var factButton: UIButton!
    
    var fact = Fact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameField.text = "Chuck"
        lastNameField.text = "Norris"
    }
    
    func replaceName(quote: String) -> String {
        var newQuote = quote
        newQuote = newQuote.replacingOccurrences(of: "Chuck", with: firstNameField.text!)
        newQuote = newQuote.replacingOccurrences(of: "chuck", with: firstNameField.text!)
        newQuote = newQuote.replacingOccurrences(of: "Norris", with: lastNameField.text!)
        newQuote = newQuote.replacingOccurrences(of: "norris", with: lastNameField.text!)
        return newQuote
    }
    
    func updateGender(quote: String) -> String {
        var newQuote = quote
        newQuote = newQuote.replacingOccurrences(of: "him", with: "her")
        //and all the other things you need to replace
        return newQuote
    }
    
    @IBAction func factButtonPressed(_ sender: UIButton) {
        fact.getQuote {
        DispatchQueue.main.async {
            self.fact.quote = self.replaceName(quote: self.fact.quote)
            if self.genderSegmentedControl.selectedSegmentIndex == 1 {
                self.fact.quote = self.updateGender(quote: self.fact.quote)
            }
            self.outputLabel.text = self.fact.quote
            }
        }

    }
}
