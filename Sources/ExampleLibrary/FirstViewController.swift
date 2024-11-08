//
//  FirstViewController.swift
//  ExampleLibrary
//
//  Created by Christian Martinez on 28/10/24.
//

import UIKit

public class FirstViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .purple
//
//        let button = UIButton(type: .system)
//        button.setTitle("Go to Second Screen v2", for: .normal)
//        button.addTarget(self, action: #selector(goToSecondScreen), for: .touchUpInside)
//        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
//        view.addSubview(button)
    }

//    @objc private func goToSecondScreen() {
//        let secondVC = SecondViewController()
//        navigationController?.pushViewController(secondVC, animated: true)
//    }
}
public extension UIViewController{
       
    static func getStoryboardVC() -> UIViewController {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil) // Use Bundle.module
           return storyboard.instantiateInitialViewController()!
       }
}
