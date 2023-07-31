//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Геник Мурадян on 30.07.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var colorView: UIView!
    
    @IBOutlet private var redSliderValue: UILabel!
    @IBOutlet private var greenSliderValue: UILabel!
    @IBOutlet private var blueSliderValue: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        colorView.layer.borderWidth = 5
        colorView.layer.borderColor = UIColor.darkGray.cgColor
        
        updateColorOfView()
        
        updateSliderValues()
    }
    
    @IBAction private func redSliderAction(_ sender: UISlider) {
        updateColorOfView()
        switch sender {
        case redSlider:
            redSliderValue.text = string(from: redSlider)
        case greenSlider:
            greenSliderValue.text = string(from: greenSlider)
        default:
            blueSliderValue.text = string(from: blueSlider)
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func updateSliderValues() {
        redSliderValue.text = string(from: redSlider)
        greenSliderValue.text = string(from: greenSlider)
        blueSliderValue.text = string(from: blueSlider)
    }
    
    private func updateColorOfView() {
        colorView.backgroundColor = UIColor(
            red: redSlider.value.cgFloat(),
            green: greenSlider.value.cgFloat(),
            blue: blueSlider.value.cgFloat(),
            alpha: 1
        )
    }
}

extension Float {
    func cgFloat() -> CGFloat {
        CGFloat(self)
    }
}
