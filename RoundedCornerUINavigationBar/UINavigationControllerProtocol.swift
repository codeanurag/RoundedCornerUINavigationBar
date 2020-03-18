//
//  UINavigationControllerProtocol.swift
//  RoundedCornerUINavigationBar
//
//  Created by Anurag Pandit on 17/03/20.
//  Copyright © 2020 Anurag Pandit. All rights reserved.
//

import Foundation
import UIKit

protocol RoundedCornerNavigationBar {
    func addRoundedCorner(OnNavigationBar navigationBar: UINavigationBar, cornerRadius: CGFloat)
}

extension RoundedCornerNavigationBar where Self: UIViewController{
    
    func addRoundedCorner(OnNavigationBar navigationBar: UINavigationBar, cornerRadius: CGFloat){
        navigationBar.isTranslucent = false
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.backgroundColor = .white
        
        let customView = UIView(frame: CGRect(x: 0, y: navigationBar.bounds.maxY, width: navigationBar.bounds.width, height: cornerRadius))
        customView.backgroundColor = .clear
        navigationBar.insertSubview(customView, at: 1)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = UIBezierPath(roundedRect: customView.bounds, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        shapeLayer.shadowColor = UIColor.lightGray.cgColor
        shapeLayer.shadowOffset = CGSize(width: 0, height: 4.0)
        shapeLayer.shadowOpacity = 0.8
        shapeLayer.shadowRadius = 2
        shapeLayer.fillColor = UIColor.white.cgColor
        customView.layer.insertSublayer(shapeLayer, at: 0)
    }
}
