//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDiceView: UIImageView!
    @IBOutlet weak var secondDiceView: UIImageView!
    
    private let diceArr = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func RollClick(_ sender: Any) {
        
        let leftDiceRandomInt = Int.random(in: 1..<6)
        let rightRandomInt = Int.random(in: 1..<6)
        
        firstDiceView.image = diceArr[leftDiceRandomInt]
        secondDiceView.image = diceArr[rightRandomInt]
    }
}
