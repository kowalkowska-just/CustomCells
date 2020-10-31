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
        table.register(CustomTableViewCellWithField.nib(), forCellReuseIdentifier: CustomTableViewCellWithField.identifier)
        table.register(CustomTableViewCellWithSwitch.nib(), forCellReuseIdentifier: CustomTableViewCellWithSwitch.identifier)
        
        table.delegate = self
        table.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row > 5 {
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCellWithField.identifier, for: indexPath) as! CustomTableViewCellWithField
            
            return fieldCell
        }
        
        if indexPath.row > 2 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCellWithImage.identifier, for: indexPath) as! CustomTableViewCellWithImage
            customCell.configure(with: "Custom Cell with Image", imageName: "alarm")
            
            return customCell
        }
        
        let switchCell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCellWithSwitch.identifier, for: indexPath) as! CustomTableViewCellWithSwitch
        switchCell.configure(with: "Custom Cell with Switch", isOn: true)
        
        return switchCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
