//
//  ViewController.swift
//  ColorPicker
//
//  Created by Андрей Барсук on 25.03.2022.
//

import UIKit

var colorRedValue: Float = 0
var colorGreenValue: Float = 0
var colorBlueValue: Float = 0

let defaultCornerRadius: CGFloat = 15

class ViewController: UIViewController {
    
    @IBOutlet var currentColorView: UIView!
    
    @IBOutlet var colorSliderRed: UISlider!
    @IBOutlet var colorSliderGreen: UISlider!
    @IBOutlet var colorSliderBlue: UISlider!
    
    @IBOutlet var colorLabelRed: UILabel!
    @IBOutlet var colorLabelGreen: UILabel!
    @IBOutlet var colorLabelBlue: UILabel!
    
    @IBOutlet var colorButtonReset: UIButton!
    @IBOutlet var colorButtonRandom: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
        resetColorToDefault()
        
    }

    @IBAction func colorSliderRedControl() {
        colorRedValue = colorSliderRed.value
        colorLabelRed.text = String(Int(colorSliderRed.value))
        updateCurrentColorView()
    }
    @IBAction func colorSliderGreenControl() {
        colorGreenValue = colorSliderGreen.value
        colorLabelGreen.text = String(Int(colorSliderGreen.value))
        updateCurrentColorView()
    }
    @IBAction func colorSliderBlueControl() {
        colorBlueValue = colorSliderBlue.value
        colorLabelBlue.text = String(Int(colorSliderBlue.value))
        updateCurrentColorView()
    }
    
    @IBAction func colorButtonResetToDefault() {
        resetColorToDefault()
    }
    
    @IBAction func colorButtonGenerateRandom() {
        generateRandomColor()
        updateCurrentColorView()
        updateUI()
    }
    
    
    private func resetColorToDefault() {
        colorRedValue = 0
        colorGreenValue = 0
        colorBlueValue = 0
        
        updateCurrentColorView()
        updateUI()
        
    }
    
    private func updateCurrentColorView() {
        currentColorView.backgroundColor  = .init(red: CGFloat(colorRedValue / 255), green: CGFloat(colorGreenValue / 255), blue: CGFloat(colorBlueValue / 255), alpha: 1)
    }
    
    private func updateUI() {
        colorSliderRed.value = colorRedValue
        colorSliderGreen.value = colorGreenValue
        colorSliderBlue.value = colorBlueValue
        
        colorLabelRed.text = String(Int(colorRedValue))
        colorLabelGreen.text = String(Int(colorGreenValue))
        colorLabelBlue.text = String(Int(colorBlueValue))
    }
    
    private func generateRandomColor() {
        colorRedValue = .random(in: 0...255)
        colorGreenValue = .random(in: 0...255)
        colorBlueValue = .random(in: 0...255)
    }
    
    private func configUI() {
        
        // Current color view
        
        currentColorView.layer.cornerRadius = defaultCornerRadius
        currentColorView.layer.borderWidth = 1
        currentColorView.layer.borderColor = UIColor.lightGray.cgColor
        
        
        // Red slider
        
        colorSliderRed.minimumValue = 0
        colorSliderRed.maximumValue = 255
        colorSliderRed.minimumTrackTintColor = .red.withAlphaComponent(0.5)
        colorSliderRed.thumbTintColor = .red
        
        // Green slider
        
        colorSliderGreen.minimumValue = 0
        colorSliderGreen.maximumValue = 255
        colorSliderGreen.minimumTrackTintColor = .green.withAlphaComponent(0.5)
        colorSliderGreen.thumbTintColor = .green
        
        // Blue slider
        
        colorSliderBlue.minimumValue = 0
        colorSliderBlue.maximumValue = 255
        colorSliderBlue.minimumTrackTintColor = .blue.withAlphaComponent(0.5)
        colorSliderBlue.thumbTintColor = .blue
        
        // Buttons
        
        colorButtonReset.layer.cornerRadius = defaultCornerRadius
        colorButtonRandom.layer.cornerRadius = defaultCornerRadius
    }

}

