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

class ViewController: UIViewController {
    
    @IBOutlet var currentColorView: UIView!
    
    @IBOutlet var colorSliderRed: UISlider!
    @IBOutlet var colorSliderGreen: UISlider!
    @IBOutlet var colorSliderBlue: UISlider!
    
    @IBOutlet var colorLabelRed: UILabel!
    @IBOutlet var colorLabelGreen: UILabel!
    @IBOutlet var colorLabelBlue: UILabel!
    
    @IBOutlet var colorButtonReset: UIButton!
    
    
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
    
    
    
    private func resetColorToDefault() {
        colorRedValue = 0
        colorGreenValue = 0
        colorBlueValue = 0
        
        updateCurrentColorView()
        
        colorSliderRed.value = colorRedValue
        colorSliderGreen.value = colorGreenValue
        colorSliderBlue.value = colorBlueValue
        
        colorLabelRed.text = String(colorRedValue)
        colorLabelGreen.text = String(colorGreenValue)
        colorLabelBlue.text = String(colorBlueValue)
        
    }
    
    private func updateCurrentColorView() {
        currentColorView.backgroundColor  = .init(red: CGFloat(colorRedValue / 255), green: CGFloat(colorGreenValue / 255), blue: CGFloat(colorBlueValue / 255), alpha: 1)
    }
    
    private func configUI() {
        
        // Color view
        
        currentColorView.layer.cornerRadius = 15
        
        // Red slider
        
        colorSliderRed.minimumValue = 0
        colorSliderRed.maximumValue = 255
        colorSliderRed.minimumTrackTintColor = .red
        colorSliderRed.thumbTintColor = .red
        
        // Green slider
        
        colorSliderGreen.minimumValue = 0
        colorSliderGreen.maximumValue = 255
        colorSliderGreen.minimumTrackTintColor = .green
        colorSliderGreen.thumbTintColor = .green
        
        // Blue slider
        
        colorSliderBlue.minimumValue = 0
        colorSliderBlue.maximumValue = 255
        colorSliderBlue.minimumTrackTintColor = .blue
        colorSliderBlue.thumbTintColor = .blue
        
        // Reset button
        
        colorButtonReset.layer.cornerRadius = 15
    }

}

