//
//  CustomTableViewCellWithSwipe.swift
//  CustomCells
//
//  Created by Justyna Kowalkowska on 31/10/2020.
//

import UIKit

class CustomTableViewCellWithSwitch: UITableViewCell {

    static var identifier = "CustomTableViewCellWithSwitch"
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCellWithSwitch", bundle: nil)
    }
    
    public func configure(with title: String, isOn: Bool) {
        myLabel.text = title
        mySwitch.isOn = isOn
    }
    
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
    
        if sender.isOn {
            print("User turned it on.")
        } else {
            print("Its now off.")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
