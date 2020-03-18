//
//  ViewController.swift
//  RoundedCornerUINavigationBar
//
//  Created by Anurag Pandit on 17/03/20.
//  Copyright © 2020 Anurag Pandit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addButton()
    }
    
    private func addButton(){
        let button = UIButton(type: .roundedRect)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.setTitle("Show View", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
    }
    
    @objc func buttonClicked(){
        let roundedNavBarVC = RoundedNavBarViewController()
        let navigationController = UINavigationController(rootViewController: roundedNavBarVC)
        navigationController.modalPresentationStyle = .overFullScreen
        self.present(navigationController, animated: true, completion: nil)
    }
    
}
