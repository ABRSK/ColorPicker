//
//  ViewController.swift
//  ColorPicker
//
//  Created by Андрей Барсук on 25.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var currentColorView: UIView!
    
    // Sliders
    @IBOutlet var colorSliderRed: UISlider!
    @IBOutlet var colorSliderGreen: UISlider!
    @IBOutlet var colorSliderBlue: UISlider!
    
    // Labels
    @IBOutlet var colorLabelRed: UILabel!
    @IBOutlet var colorLabelGreen: UILabel!
    @IBOutlet var colorLabelBlue: UILabel!
    
    // Buttons
    @IBOutlet var colorButtonReset: UIButton!
    @IBOutlet var colorButtonRandom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
        resetColorToDefault()
        
    }

    @IBAction func colorSliderRedControl() {
        colorLabelRed.text = String(Int(colorSliderRed.value))
        updateCurrentColorView()
    }
    @IBAction func colorSliderGreenControl() {
        colorLabelGreen.text = String(Int(colorSliderGreen.value))
        updateCurrentColorView()
    }
    @IBAction func colorSliderBlueControl() {
        colorLabelBlue.text = String(Int(colorSliderBlue.value))
        updateCurrentColorView()
    }
    
    @IBAction func colorButtonResetToDefault() {
        resetColorToDefault()
        updateCurrentColorView()
        updateUI()
    }
    
    @IBAction func colorButtonGenerateRandom() {
        generateRandomColor()
        updateCurrentColorView()
        updateUI()
    }
    
    
    private func resetColorToDefault() {
        colorSliderRed.value = colorSliderRed.minimumValue
        colorSliderGreen.value = colorSliderGreen.minimumValue
        colorSliderBlue.value = colorSliderBlue.minimumValue
    }
    
    private func updateCurrentColorView() {
        currentColorView.backgroundColor  = UIColor(
            red: CGFloat(colorSliderRed.value / 255),
            green: CGFloat(colorSliderGreen.value / 255),
            blue: CGFloat(colorSliderBlue.value / 255),
            alpha: 1)
    }
    
    private func updateUI() {
        
        colorLabelRed.text = String(Int(colorSliderRed.value))
        colorLabelGreen.text = String(Int(colorSliderGreen.value))
        colorLabelBlue.text = String(Int(colorSliderBlue.value))
    }
    
    private func generateRandomColor() {
        colorSliderRed.value = .random(in: 0...255)
        colorSliderGreen.value = .random(in: 0...255)
        colorSliderBlue.value = .random(in: 0...255)
    }
    
    private func configUI() {
        
        // Current color view
        
        currentColorView.layer.cornerRadius = 15
        currentColorView.layer.borderWidth = 1
        currentColorView.layer.borderColor = UIColor.lightGray.cgColor
        
        
        // Red slider
        
        colorSliderRed.maximumValue = 255
        colorSliderRed.minimumTrackTintColor = .red.withAlphaComponent(0.5)
        colorSliderRed.thumbTintColor = .red
        
        // Green slider
        
        colorSliderGreen.maximumValue = 255
        colorSliderGreen.minimumTrackTintColor = .green.withAlphaComponent(0.5)
        colorSliderGreen.thumbTintColor = .green
        
        // Blue slider
        
        colorSliderBlue.maximumValue = 255
        colorSliderBlue.minimumTrackTintColor = .blue.withAlphaComponent(0.5)
        colorSliderBlue.thumbTintColor = .blue
        
        // Buttons
        
        colorButtonReset.layer.cornerRadius = 15
        colorButtonRandom.layer.cornerRadius = 15
    }

}

