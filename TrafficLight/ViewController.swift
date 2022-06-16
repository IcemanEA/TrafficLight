//
//  ViewController.swift
//  TrafficLight
//
//  Created by Egor Ledkov on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    
    @IBOutlet var lightStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func nextButtonTapped() {
        redLightView.alpha = 1
        
    }
    
}

