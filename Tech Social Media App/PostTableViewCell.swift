//
//  PostTableViewCell.swift
//  Tech Social Media App
//
//  Created by David Granger on 3/20/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postView: UIView!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
