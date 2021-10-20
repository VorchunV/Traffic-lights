//
//  ViewController.swift
//  Traffic lights
//
//  Created by Варвара Фомина on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    private var pressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
    }
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
        
    
    @IBAction func startButtonPressed() {
        pressed += 1
        startButton.setTitle("NEXT", for: .normal)
        
        switch pressed {
        case 1:
            redView.alpha = 1
            greenView.alpha = 0.3
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
        case 3:
            yellowView.alpha = 0.3
            greenView.alpha = 1
        default:
            pressed = 0
        }
    }
    
}

