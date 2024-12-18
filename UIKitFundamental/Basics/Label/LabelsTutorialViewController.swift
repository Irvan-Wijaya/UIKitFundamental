//
//  LabelsTutorialViewController.swift
//  UIKitFundamental
//
//  Created by Irvan Wijaya on 06/12/24.
//

import UIKit

class LabelsTutorialViewController: UIViewController {
    // 2 cara declare UILabel
    private var textLabel = UILabel() // 1
    
    private var subLabel: UILabel = { // 2
        let label = UILabel()
        label.text = "This is a subtitle"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Hello, Van!"
        textLabel.font = .systemFont(ofSize: 20, weight: .medium)
        view.addSubview(textLabel)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(subLabel)
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8).isActive = true
        subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview{
    LabelsTutorialViewController()
}
