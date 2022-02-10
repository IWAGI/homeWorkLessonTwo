//
//  ViewController.swift
//  homeWorkLessonTwo
//
//  Created by Mikhail on 09.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        colorView.layer.cornerRadius = 30
        
        setupMinTrackTintColorForSliders()
        setColorForView()
        setupLabelsValue(for: redLabel, greenLabel, blueLabel)
    }

    @IBAction func slidersValueChanged(_ sender: UISlider) {
        setColorForView() // Set view color
        
        switch sender {
        case redSlider: redLabel.text = string(from: sender)
        case greenSlider: greenLabel.text = string(from: sender)
        case blueSlider: blueLabel.text = string(from: sender)
        default: break
        }
    }
    
    private func setupMinTrackTintColorForSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setColorForView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255,
                                            green: CGFloat(greenSlider.value) / 255,
                                            blue: CGFloat(blueSlider.value) / 255,
                                            alpha: 1)
    }
    
    private func setupLabelsValue(for labels: UILabel...) { //main - Set tags for labels and sliders
        labels.forEach { label in
            switch label.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: greenLabel.text = string(from: greenSlider)
            case 2: blueLabel.text = string(from: blueSlider)
            default: break
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.0f", slider.value)
    }
    
}

