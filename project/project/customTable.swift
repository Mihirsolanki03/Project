//
//  customTable.swift
//  project
//
//  Created by Mihir Solanki on 14/07/21.
//

import UIKit

class customTable: UITableViewCell {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
