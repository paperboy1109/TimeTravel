//
//  FirstViewController.swift
//  TimeTravel
//
//  Created by Daniel J Janiak on 11/20/16.
//  Copyright © 2016 redwoodempiredev. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var label1: UILabel!    
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let year = Utilities().getCurrentYear()
        
        label1.text = Utilities().getLetter(fromString: year, location: 0)
        label2.text = Utilities().getLetter(fromString: year, location: 1)
        label3.text = Utilities().getLetter(fromString: year, location: 2)
        label4.text = Utilities().getLetter(fromString: year, location: 3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

