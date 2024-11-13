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

//        guard let url = URL(string: "https://lottie.host/bfe3bdb1-6c05-49f7-ab08-bb72dfdae200/5ZLlU6GveN.json") else {
//            return
//        }
//        
//        // Initialize the AnimationView with the animation name
//        animationView = LottieAnimationView()
//        
//        // Ensure the animation was loaded successfully
//        guard let animationView = animationView else { return }
//        
//        // Set the frame or use Auto Layout
//        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
//        animationView.center = view.center
//        
//        // Configure animation properties
//        animationView.contentMode = .scaleAspectFill
//        animationView.loopMode = .loop
//        animationView.animationSpeed = 1.0
//        
//        // Add the animation view to the main view
//        view.addSubview(animationView)
//         
//        LottieAnimation.loadedFrom(url: url, closure: { [weak self] animation in
//            self?.animationView?.animation = animation
//            self?.animationView?.loopMode = .loop
//            self?.animationView?.play()
//        }, animationCache: DefaultAnimationCache.sharedCache)
        
        animationView = LottieAnimationView(name: "frankie")
        
        animationView!.frame = view.bounds
        
        // 3. Set animation content mode
        
        animationView!.contentMode = .scaleAspectFit
        
        // 4. Set animation loop mode
        
        animationView!.loopMode = .loop
        
        // 5. Adjust animation speed
        
        animationView!.animationSpeed = 0.5
        
        view.addSubview(animationView!)
        
        // 6. Play animation
        
        animationView!.play()
    }
    
}
