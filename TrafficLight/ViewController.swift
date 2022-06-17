//
//  ViewController.swift
//  TrafficLight
//
//  Created by Egor Ledkov on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightViews: [UIView]!
    @IBOutlet var nextButton: UIButton!
    
    private var activeLightIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextButton.layer.cornerRadius = 10
        
        lightTurnOff()
    }
    
    override func viewDidLayoutSubviews() {
        for lightView in lightViews {
            lightView.layer.cornerRadius = lightView.frame.height / 2
        }
    }
    
    @IBAction func nextButtonTapped() {
        nextButton.setTitle("NEXT", for: .normal)
        
        activeLightIndex += 1
        
        if activeLightIndex == lightViews.count {
            activeLightIndex = 0
        }
        lightTurnOff()
        lightViews[activeLightIndex].alpha = 1
    }
    
    private func lightTurnOff() {
        for lightView in lightViews {
            lightView.alpha = 0.3
        }
    }
    
}

