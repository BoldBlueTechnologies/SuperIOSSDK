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
        view.backgroundColor = .lightGray

        let label = UILabel()
        label.text = "This is the second screen!"
        label.textAlignment = .center
        label.frame = CGRect(x: 50, y: 200, width: 300, height: 50)
        view.addSubview(label)
    }
}

