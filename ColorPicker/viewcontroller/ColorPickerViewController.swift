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
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickButtonColorGreen(_ sender: Any) {
      completionHandler(ColorAsset.green.color)
    }
    
    @IBAction func clickButtonColorOrange(_ sender: Any) {
      completionHandler(ColorAsset.orange.color)
    }
    
    @IBAction func clickButtonColorPurple(_ sender: Any) {
        completionHandler(ColorAsset.purple.color)
    }
    
}

