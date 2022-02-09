//
//  ViewController.swift
//  homeWorkLessonTwo
//
//  Created by Mikhail on 09.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    private var redValue: CGFloat = 50
    private var greenValue: CGFloat = 75
    private var blueValue: CGFloat = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        colorView.layer.cornerRadius = 30
        
        setupSliders()
        startValuesOfElements()
    }
    
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }

    @IBAction func redSLiderValueChanged() {
        redValueLabel.text = String(Int(redSlider.value))
        
        redValue = CGFloat(redSlider.value)
        colorView.backgroundColor = UIColor(red: redValue / 255,
                                            green: greenValue / 255,
                                            blue: blueValue / 255,
                                            alpha: 1)
    }
    
    @IBAction func greenSLiderValueChanged() {
        greenValueLabel.text = String(Int(greenSlider.value))
        
        greenValue = CGFloat(greenSlider.value)
        colorView.backgroundColor = UIColor(red: redValue / 255,
                                            green: greenValue / 255,
                                            blue: blueValue / 255,
                                            alpha: 1)
    }
    
    @IBAction func blueSLiderValueChanged() {
        blueValueLabel.text = String(Int(blueSlider.value))
        
        blueValue = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(red: redValue / 255,
                                            green: greenValue / 255,
                                            blue: blueValue / 255,
                                            alpha: 1)
    }
    
    private func startValuesOfElements() {
        redSlider.value = Float(redValue)
        greenSlider.value = Float(greenValue)
        blueSlider.value = Float(blueValue)
        
        colorView.backgroundColor = UIColor(red: redValue / 255,
                                            green: greenValue / 255,
                                            blue: blueValue / 255,
                                            alpha: 1)
        
        redValueLabel.text = String(Int(redSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
}

