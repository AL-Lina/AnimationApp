//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alina Sokolova on 12.01.22.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    enum Animation {
        case fisrtAnimation
        case secondAnimation
        case thirdAnimation
    }
    
    private var currentAnimation = Animation.fisrtAnimation
    
    

    @IBAction func runButtonAnimation(_ sender: SpringButton) {
        switch currentAnimation {
        case .fisrtAnimation:
            sender.setTitle("Run", for: .normal)
            springView.animation = "pop"
            springView.curve = "easeInOut"
            springView.force = 2
            springView.duration = 1
            springView.delay = 0.3
            sender.animation = "squeeze"
            sender.animate()
        case .secondAnimation:
            sender.setTitle("SecondAnimation", for: .normal)
            springView.animation = "shake"
            springView.curve = "easenOutCubic"
            springView.force = 0.57
            springView.duration = 1.80
            springView.delay = 0.3
            sender.animation = "shake"
            sender.animate()
        case .thirdAnimation:
            sender.setTitle("ThirdAnimation", for: .normal)
            springView.animation = "fall"
            springView.curve = "easeInOutCubic"
            springView.force = 0.57
            springView.duration = 1.80
            springView.delay = 0.3
            sender.animation = "zoomIn"
            sender.animate()
        }
    }
    
}

