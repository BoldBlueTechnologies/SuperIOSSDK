//
//  SecondViewController.swift
//  
//
//  Created by Christian Martinez on 28/10/24.
//

import UIKit

public class SecondViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple

        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.addTarget(self, action: #selector(openInsuranceFlow), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        view.addSubview(button)
    }
    
    @objc private func openInsuranceFlow() {
        
        let storyboard = UIStoryboard(name: "SuperSDK", bundle: nil)
        let switchViewController = storyboard.instantiateViewController(
            withIdentifier: "FirstView") as! FirstViewController
        switchViewController.modalPresentationStyle = .popover
        switchViewController.isModalInPresentation = true
        self.present(UINavigationController(rootViewController: switchViewController), animated: true, completion: nil)
    }
}

