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
        updateColorOfView()
        
    }
    
    @IBAction private func redSliderAction(_ sender: UISlider) {
        redSliderValue.text = String(format: "%.2f", sender.value)
        updateColorOfView()
    }
    @IBAction private func greenSliderAction(_ sender: UISlider) {
        greenSliderValue.text = String(format: "%.2f", sender.value)
        updateColorOfView()
    }
    @IBAction private func blueSliderAction(_ sender: UISlider) {
        blueSliderValue.text = String(format: "%.2f", sender.value)
        updateColorOfView()
    }
    
}

// MARK: - Update color of view
extension ViewController {
    private func updateColorOfView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}
