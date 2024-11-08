//
//  FirstViewController.swift
//  ExampleLibrary
//
//  Created by Christian Martinez on 28/10/24.
//

import UIKit

public class FirstViewController: UIViewController {
    
    lazy private var sampleLabel: UILabel = {
           let label = UILabel()
           label.translatesAutoresizingMaskIntoConstraints = false
           label.text = "Hello World!"
           label.textColor = UIColor.white
           return label
       }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        self.view.addSubview(self.sampleLabel)
        self.setUpConstraints()
    }
    
    func setUpConstraints() {
        let sampleLabelConstraints = [
            self.sampleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.sampleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(sampleLabelConstraints)
    }
    
}

