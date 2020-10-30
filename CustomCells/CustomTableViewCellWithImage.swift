//
//  CustomTableViewCellWithImage.swift
//  CustomCells
//
//  Created by Justyna Kowalkowska on 30/10/2020.
//

import UIKit

class CustomTableViewCellWithImage: UITableViewCell {

    static let identifier = "CustomTableViewCellWithImage"
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCellWithImage", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        myLabel.text = title
        myImageView.image = UIImage(systemName: imageName)
    }

    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
