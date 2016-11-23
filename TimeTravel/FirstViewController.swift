//
//  FirstViewController.swift
//  TimeTravel
//
//  Created by Daniel J Janiak on 11/20/16.
//  Copyright © 2016 redwoodempiredev. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Properties
    
    let utilities = Utilities()
    
    var timer = Timer()
    
    // MARK: - Outlets

    @IBOutlet var label1: UILabel!                
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    @IBOutlet var timeLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tick()
        
        let year = utilities.getCurrentYear()
        
        guard year.characters.count >= 4 else { return }
        
        label1.text = utilities.getLetter(fromString: year, location: 0)
        label2.text = utilities.getLetter(fromString: year, location: 1)
        label3.text = utilities.getLetter(fromString: year, location: 2)
        label4.text = utilities.getLetter(fromString: year, location: 3)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.tick), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tick() {
        timeLabel.text = Utilities().getCurrentTime()
        
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            
            self.view.alpha = 0.5
        
        }) { (true) in
            
            self.view.alpha = 1.0
        }
    }


}

