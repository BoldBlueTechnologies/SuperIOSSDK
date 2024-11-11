//
//  lottieExampleViewController.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 11/11/24.
//

import UIKit
import Lottie

class lottieExampleViewController: UIViewController {

    @IBOutlet weak var animationLottieView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationLottieView = .init(name: "animationTest")
        animationLottieView.contentMode = .scaleAspectFit
          
          // 2. Set animation loop mode
          
        animationLottieView.loopMode = .loop
          
          // 3. Adjust animation speed
          
        animationLottieView.animationSpeed = 0.5
          
          // 4. Play animation
        animationLottieView.play()
        
    }
    
}
