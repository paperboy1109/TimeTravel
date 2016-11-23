//
//  CustomView.swift
//  TimeTravel
//
//  Created by Daniel J Janiak on 11/23/16.
//  Copyright © 2016 redwoodempiredev. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        //layer.shadowColor = UIColor(red: , green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        layer.shadowColor = UIColor(red: Shadow.SHADOW_COLOR, green: Shadow.SHADOW_COLOR, blue: Shadow.SHADOW_COLOR, alpha: Shadow.SHADOW_COLOR).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        //layer.shadowOffset = CGSizeMake(0.0, 2.0)
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
    }
    
}
