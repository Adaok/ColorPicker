//
//  colorViewController.swift
//  ColorPicker
//
//  Created by iem on 03/03/2016.
//  Copyright © 2016 loiodice. All rights reserved.
//

import Foundation
import UIKit

class colorViewController: UIViewController {
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBAction func chooseColor(sender: UIButton) {
        switch(sender){
        case redButton: selectedColor = UIColor.redColor()
            
        case orangeButton: selectedColor = UIColor.orangeColor()
            
        case greenButton: selectedColor = UIColor.greenColor()
            
        default: selectedColor = UIColor.grayColor()
        }
    }
    
    var selectedColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}