//
//  ViewController.swift
//  LibraryExampleDemoApp
//
//  Created by Christian Martinez on 28/10/24.
//

import UIKit
import ExampleLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let button = UIButton(type: .system)
        button.setTitle("Open Insurance Flow", for: .normal)
        button.addTarget(self, action: #selector(openInsuranceFlow), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        view.addSubview(button)
    }

    @objc private func openInsuranceFlow() {
//        let firstVC = FirstViewController()
//        let navigationController = UINavigationController(rootViewController: firstVC)
//        present(navigationController, animated: true, completion: nil)
        
        
        let storyboard = UIStoryboard(name: "SuperMx", bundle: nil)
        let switchViewController = storyboard.instantiateViewController(
            withIdentifier: "FirstView") as! FirstViewController
        switchViewController.modalPresentationStyle = .popover
        switchViewController.isModalInPresentation = true
        self.present(UINavigationController(rootViewController: switchViewController), animated: true, completion: nil)
    }
}

