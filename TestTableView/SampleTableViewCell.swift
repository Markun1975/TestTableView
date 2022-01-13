//
//  SampleTableViewCell.swift
//  TestTableView
//
//  Created by Masaki on R 4/01/03.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var titleLavel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var sortButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        discriptionLabel.text = "test,test,test,test"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
