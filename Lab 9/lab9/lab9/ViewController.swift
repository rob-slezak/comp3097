//
//  ViewController.swift
//  lab9
//
//  Created by Robert on 2020-03-23.
//  Copyright © 2020 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert);
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action sheet
        });
        alert.addAction(okAction);
        self.present(alert, animated: true, completion: nil);
    }
    
    @IBAction func buttonTapped2(_ sender: UIButton) {
        let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recomended you bring your towel before continuing.", preferredStyle: .alert);
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil));
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil));

        self.present(alert, animated: true);
    }
    
}

