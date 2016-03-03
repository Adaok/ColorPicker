//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by iem on 03/03/2016.
//  Copyright © 2016 loiodice. All rights reserved.
//

import Foundation
import UIKit

class ColorPickerViewController : UIViewController {
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBAction func btnSelectColor(sender: UIButton) {
        switch sender{
        case greenButton: completionHandlers!(color.green)
            
        case orangeButton: completionHandlers!(color.orange)
            
        case redButton: completionHandlers!(color.red)
            
        default : completionHandlers!(color.defaultColor)
        }
        
    }
    
    var completionHandlers:((UIColor)->())?
    
    struct color {
        static let red = UIColor.redColor()
        
        static let green = UIColor.greenColor()
        
        static let orange = UIColor.orangeColor()
        
        static let defaultColor = UIColor.grayColor()
    }
}
