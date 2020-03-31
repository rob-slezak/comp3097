//
//  ViewController.swift
//  lab10
//
//  Created by Robert on 2020-03-30.
//  Copyright © 2020 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "firstLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.title = "Second View Title"
        nextVC.receivedString = "Order Menu"
    }

}

