//
//  lottieExampleViewController.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 11/11/24.
//

import UIKit
import Lottie

class lottieExampleViewController: UIViewController {

    @IBOutlet weak var animationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationView = .init(name: "animationTest")
        animationView.contentMode = .scaleAspectFit
          
          // 2. Set animation loop mode
          
          animationView.loopMode = .loop
          
          // 3. Adjust animation speed
          
          animationView.animationSpeed = 0.5
          
          // 4. Play animation
          animationView.play()
        
    }
    
}
