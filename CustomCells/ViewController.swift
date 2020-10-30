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
        
        table.register(CustomTableViewCellWithImage.nib(), forCellReuseIdentifier: CustomTableViewCellWithImage.identifier)
        
        table.delegate = self
        table.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row > 2 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCellWithImage.identifier, for: indexPath) as! CustomTableViewCellWithImage
            customCell.configure(with: "Custom Cell with Image", imageName: "alarm")
            return customCell
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World \(indexPath.row+1)"
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
                
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
    
        if sender.isOn {
            print("User turned it on.")
        } else {
            print("Its now off.")
        }
    }
    
}
