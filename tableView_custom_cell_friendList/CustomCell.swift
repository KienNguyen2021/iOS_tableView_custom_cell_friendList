//
//  CustomCell.swift
//  tableView_custom_cell_friendList
//
//  Created by Kien Nguyen on 2021-07-05.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var friendView: UIView!
    
  
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
