//
//  PickerViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit


class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var buttonColorGreen: UIButton!
    @IBOutlet weak var buttonColorOrange: UIButton!
    @IBOutlet weak var buttonColorPurple: UIButton!
    
    var completionHandler: ((UIColor) -> ())!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickButtonColorGreen(_ sender: Any) {
      completionHandler(R.color.green()!)
    }
    
    @IBAction func clickButtonColorOrange(_ sender: Any) {
      completionHandler(R.color.orange()!)
    }
    
    @IBAction func clickButtonColorPurple(_ sender: Any) {
        completionHandler(R.color.purple()!)
    }
    
}


