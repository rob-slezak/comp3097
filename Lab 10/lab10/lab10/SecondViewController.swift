//
//  SecondViewController.swift
//  lab10
//
//  Created by Robert on 2020-03-30.
//  Copyright © 2020 Robert. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var labelDisplay: UILabel!
    var receivedString = ""

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    var orders = ["Burger", "Hotdog", "Fries", "Salad", "Soft Drink", "Milkshake"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelDisplay.text = receivedString;
        
        result.numberOfLines = 0
        self.picker.delegate = self
        self.picker.dataSource = self
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return orders.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return orders[row]
    }
    
    @IBAction func placeOrder(_ sender: UIButton) {
        result.text = (result?.text ?? "") + "\n" +  orders[picker.selectedRow(inComponent: 0)]
    }
}
	
