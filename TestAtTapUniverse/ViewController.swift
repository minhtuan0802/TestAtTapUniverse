//
//  ViewController.swift
//  TestAtTapUniverse
//
//  Created by Ngô Minh Tuấn on 10/11/2021.
//

import UIKit
import MSCircularSlider

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var changeView: UIView!
    @IBOutlet weak var slider: MSCircularSlider!
    @IBOutlet weak var numberView: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    
    var value: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    func setupLayout() {
        containerView.backgroundColor = UIColor(red: 0.92, green: 0.94, blue: 0.99, alpha: 1.00)
        containerView.layer.cornerRadius = containerView.frame.height/2
        slider.handleType = .doubleCircle
        slider.filledColor = UIColor(red: 0.35, green: 0.52, blue: 0.97, alpha: 1.00)
        slider.handleColor = UIColor(red: 0.35, green: 0.52, blue: 0.97, alpha: 1.00)
        slider.handleEnlargementPoints = 30
        numberView.layer.cornerRadius = numberView.frame.height/2
        numberLabel.text = String(format: "%02d", Int(slider.currentValue)) + "%"
        numberLabel.textColor = UIColor(red: 0.35, green: 0.52, blue: 0.97, alpha: 1.00)
        changeView.backgroundColor = UIColor(red: 0.35, green: 0.52, blue: 0.97, alpha: 1.00)
        changeView.frame = CGRect(x: 0, y: 0, width: CGFloat(value), height: CGFloat(value))
        changeView.layer.cornerRadius = changeView.frame.height/2
        changeView.center = view.center
    }

    @IBAction func sliderAction(_ sender: Any) {
        numberLabel.text = String(format: "%02d", Int(slider.currentValue)) + "%"
        value = numberView.frame.height + ((containerView.frame.height - numberView.frame.height) * CGFloat(slider.currentValue/100))
        changeView.frame = CGRect(x: 0, y: 0, width: CGFloat(value), height: CGFloat(value))
        changeView.layer.cornerRadius = changeView.frame.height/2
        changeView.center = view.center
    }
    
}

