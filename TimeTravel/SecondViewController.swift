//
//  SecondViewController.swift
//  TimeTravel
//
//  Created by Daniel J Janiak on 11/20/16.
//  Copyright © 2016 redwoodempiredev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label1.text = "0"
        label2.text = "0"
        label3.text = "0"
        label4.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let utilities = Utilities()
        
        let year = utilities.getRandomYear()
        
        label1.text = utilities.getLetter(fromString: year, location: 0)
        label2.text = utilities.getLetter(fromString: year, location: 1)
        label3.text = utilities.getLetter(fromString: year, location: 2)
        label4.text = utilities.getLetter(fromString: year, location: 3)
        
        animateItem(duration: 0.5, delay: 0.0, object: label1)
        animateItem(duration: 0.5, delay: 0.2, object: label2)
        animateItem(duration: 0.5, delay: 0.4, object: label3)
        animateItem(duration: 0.5, delay: 0.6, object: label4)

        
    }
    
    // MARK: - Helpers
    
    func animateItem(duration: Double, delay: Double, object: UIView) {
        
        /* Create an animation */
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            
            object.center.x += self.view.bounds.width
            
        }) { (true) in
            
            
            
        }
        
    }
    
}

