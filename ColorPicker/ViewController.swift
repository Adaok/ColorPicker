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
        let previousColor: UIColor! = self.view.backgroundColor
        self.view.backgroundColor = color
        let alertController = UIAlertController(title: "Pick color", message: "Do you want keep this color ?", preferredStyle: UIAlertControllerStyle.ActionSheet)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        alertController.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel, handler: {action in self.view.backgroundColor = previousColor}))
        self.dismissViewControllerAnimated(true, completion: nil)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }



}
