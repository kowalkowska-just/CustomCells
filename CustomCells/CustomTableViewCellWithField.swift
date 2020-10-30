//
//  CustomTableViewCellWithField.swift
//  CustomCells
//
//  Created by Justyna Kowalkowska on 30/10/2020.
//

import UIKit

class CustomTableViewCellWithField: UITableViewCell, UITextFieldDelegate {

    static var identifier = "CustomTableViewCellWithField"
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCellWithField",
                     bundle: nil)
    }
    
    @IBOutlet var field: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        field.delegate = self
        field.placeholder = "Enter something..."
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("\(textField.text ?? "")")
        return true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
