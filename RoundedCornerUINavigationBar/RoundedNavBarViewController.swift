//
//  RoundedNavBarViewController.swift
//  RoundedCornerUINavigationBar
//
//  Created by Anurag Pandit on 17/03/20.
//  Copyright © 2020 Anurag Pandit. All rights reserved.
//

import UIKit

class RoundedNavBarViewController: UIViewController , RoundedCornerNavigationBar{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    private func setupNavBar(){
        title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        addRoundedCorner(OnNavigationBar: self.navigationController!.navigationBar, cornerRadius: 20)
    }

}

 
