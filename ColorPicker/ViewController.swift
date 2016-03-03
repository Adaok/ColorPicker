//
//  ViewController.swift
//  ColorPicker
//
//  Created by iem on 03/03/2016.
//  Copyright © 2016 loiodice. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //var delegate:ColorPickerDelegate
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "btnPickColor" {
            let destination = segue.destinationViewController as! ColorPickerViewController
            destination.delegate = self
        }
    }
    
    func userDidChooseColor(color: UIColor) {
        self.view.backgroundColor = color
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}

