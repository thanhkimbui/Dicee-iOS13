//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        // What will be showing on the screen at application start up
        super.viewDidLoad()

        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        var diceImagesArray: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        diceImageView1.image = UIImage(imageLiteralResourceName: diceImagesArray[Int.random(in: 0...5)])
        diceImageView2.image = UIImage(imageLiteralResourceName: diceImagesArray[Int.random(in: 0...5)])

    }
    
}

