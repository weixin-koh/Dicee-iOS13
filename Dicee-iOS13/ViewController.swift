//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var diceImageNames: [String] = [
        "DiceOne",
        "DiceTwo",
        "DiceThree",
        "DiceFour",
        "DiceFive",
        "DiceSix",
    ]
    
    func getRandomDiceName() -> String {
        return diceImageNames.randomElement()!
    }

    /*
     This is directly encoded to the element in the storyboard
     as it was created as an outlet to the storyboard element.
     To rename the element, you will need to re-associate it to
     the element in Main.storyboard by clicking control, then
     re-dragging the variable to the element.
     */
    //
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBAction func rollButtonPressed(_ sender: Any) {
        diceImageView1.image = UIImage(imageLiteralResourceName: getRandomDiceName())
        diceImageView2.image = UIImage(imageLiteralResourceName: getRandomDiceName())
    }
}

