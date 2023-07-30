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
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    private func updateColorOfView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redSliderValue.text = String(format: "%.2f", sender.value)
        updateColorOfView()
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenSliderValue.text = String(format: "%.2f", sender.value)
        updateColorOfView()
    }
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueSliderValue.text = String(format: "%.2f", sender.value)
        updateColorOfView()
    }
    
}

