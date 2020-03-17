//
//  RoundedNavBarViewController.swift
//  RoundedCornerUINavigationBar
//
//  Created by Anurag Pandit on 17/03/20.
//  Copyright © 2020 Anurag Pandit. All rights reserved.
//

import UIKit

class RoundedNavBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setupNavBar()
    }
    
    private func setupNavBar(){
        title = "Profile"
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
