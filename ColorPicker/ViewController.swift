//
//  ViewController.swift
//  ColorPicker
//
//  Created by Андрей Барсук on 25.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var currentColorView: UIView!
    
    @IBOutlet var colorSliderRed: UISlider!
    @IBOutlet var colorSliderGreen: UISlider!
    @IBOutlet var colorSliderBlue: UISlider!
    
    @IBOutlet var colorLabelRed: UILabel!
    @IBOutlet var colorLabelGreen: UILabel!
    @IBOutlet var colorLabelBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetToDefault()
        
    }

    @IBAction func colorSliderRedControl() {
    }
    @IBAction func colorSliderGreenControl() {
    }
    @IBAction func colorSliderBlueControl() {
    }
    
    
    private func resetToDefault() {
        colorSliderRed.value = 0
        colorSliderGreen.value = 0
        colorSliderBlue.value = 0
        
    }

}

