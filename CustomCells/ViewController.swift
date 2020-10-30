//
//  ViewController.swift
//  CustomCells
//
//  Created by Justyna Kowalkowska on 30/10/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World \(indexPath.row+1)"
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
                
        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
    
        if sender.isOn {
            print("User turned it on.")
        } else {
            print("Its now off.")
        }
        
    }
    
}
