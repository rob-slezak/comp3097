//
//  ViewController.swift
//  Shopping Simple
//
//  Created by Tech on 2020-03-11.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var IBO_NewList: UIButton!
    @IBOutlet weak var IBO_ListTableView: UITableView!
    let data = ["Loblaws", "Home Hardware", "Cosco"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        IBO_NewList.backgroundColor = UIColor.init(red: 210/255, green: 210/255, blue: 210/255, alpha: 1);
        IBO_NewList.layer.borderColor = UIColor.black.cgColor;
        IBO_NewList.layer.borderWidth = 1;
        IBO_NewList.layer.cornerRadius = 8;
        
        IBO_ListTableView.delegate = self;
        IBO_ListTableView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Number of items in the list
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count;
    }

    // All sections are given 1 row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }

    // Makes header background clear
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView();
        headerView.backgroundColor = UIColor.clear;
        return headerView;
    }

    // Increases header size creating spacing between items
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 16;
    }

    // Creates the cells in the table adding data and formatting
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseID")!;
        
        cell.textLabel?.text = data[indexPath.section];
        cell.textLabel?.font = .systemFont(ofSize: 32.0);
        
        cell.backgroundColor = UIColor.white;
        cell.layer.borderColor = UIColor.black.cgColor;
        cell.layer.borderWidth = 1;
        cell.layer.cornerRadius = 8;
        cell.clipsToBounds = true;

        return cell;
    }

}

