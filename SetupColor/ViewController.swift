//
//  ViewController.swift
//  SetupColor
//
//  Created by Nikita Pryahin on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeViewColor(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(
                        red: CGFloat(redSlider.value),
                        green: CGFloat(greenSlider.value),
                        blue: CGFloat(blueSlider.value),
                        alpha: 1.0
                    )
        redLabel.text = String(roundThe(number: redSlider.value))
        greenLabel.text = String(roundThe(number: greenSlider.value))
        blueLabel.text = String(roundThe(number: blueSlider.value))
    }
        
    func roundThe(number: Float) -> Float {
        let roundedNumber = round(number * 100) / 100
        return roundedNumber
    }
}

