//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var currentColor: UIColor = R.color.green()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "pickColor"){
            let colorPickerView = segue.destination as! ColorPickerViewController
            colorPickerView.completionHandler = userDidChooseColor
        }
    }
    
}


extension ViewController {
    
    func userDidChooseColor(color: UIColor) {
        self.view.backgroundColor = color
        self.dismiss(animated: false, completion: nil)
        let alert = UIAlertController(title: R.string.file.dialogTitle(), message: R.string.file.dialogMessage(), preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: R.string.file.dialogButtonYes(), style: .default, handler: {action in self.currentColor = color}))
        alert.addAction(UIAlertAction(title: R.string.file.dialogButtonNo(), style: .cancel, handler: {
            action in
            UIView.animate(withDuration: 1.0, delay: 0.0, animations:
                {
                    self.view.backgroundColor = self.currentColor
            }, completion:nil)
        }
        ))
        
        self.present(alert, animated: true)
    }
    
    
}
