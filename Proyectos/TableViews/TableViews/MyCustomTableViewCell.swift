//
//  MyCustomTableViewCell.swift
//  TableViews
//
//  Created by Esteban Perez Castillejo on 19/2/24.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myFirsLabel: UILabel!
    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myFirsLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirsLabel.textColor = .blue
        mySecondLabel.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      //   printContent(myFirsLabel.text ?? "" )
        
        print(myFirsLabel.text ?? "" )
        
    }
    
}
