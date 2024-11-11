//
//  lottieExampleViewController.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 11/11/24.
//

import UIKit
import Lottie

class lottieExampleViewController: UIViewController {
    
    private var animationView: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 2. Start LottieAnimationView with animation name (without extension)
          
          animationView = .init(name: "animationTest")
        
        
          animationView!.frame = view.bounds
          
          // 3. Set animation content mode
          
          animationView!.contentMode = .scaleAspectFit
          
          // 4. Set animation loop mode
          
          animationView!.loopMode = .loop
          
          // 5. Adjust animation speed
          
          animationView!.animationSpeed = 0.5
          
        view.backgroundColor = .red
        
          view.addSubview(animationView!)
          
          // 6. Play animation
          
          animationView!.play()
    }
    
}
