//
//  CommentTableViewCell.swift
//  Tech Social Media App
//
//  Created by David Granger on 3/30/23.
//

import UIKit

class CommentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var commentView: UIView!
    @IBOutlet weak var commentLBL: UILabel!
    @IBOutlet weak var userCommentedLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
