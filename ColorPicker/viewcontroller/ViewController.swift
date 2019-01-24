//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var currentColor: UIColor = UIColor(named: "green")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "pickColor"){
            let colorPickerView = segue.destination as! ColorPickerViewController
            colorPickerView.delegate = self
        }
    }

}


extension ViewController: ColorPickerDelegate {
    
    func userDidChooseColor(color: UIColor) {
        self.view.backgroundColor = color
        self.dismiss(animated: false, completion: nil)
        let alert = UIAlertController(title: "Confirmation", message: "Conserver le changement de couleur ?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in self.currentColor = color}))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {
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
