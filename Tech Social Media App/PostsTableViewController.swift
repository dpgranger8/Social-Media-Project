//
//  PostsTableViewController.swift
//  Tech Social Media App
//
//  Created by David Granger on 3/30/23.
//

import UIKit

class PostsTableViewController: UITableViewController {
    
    @IBOutlet var postsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postsTableView.backgroundView = UIImageView(image: UIImage(named: "texture"))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return Post.mockPosts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 == 1 {
            return CGFloat(1)
        } else {
            return UITableView.automaticDimension
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //Custom header view and label
        let headerView = UIView()
        let headerLabel = UILabel()
        
        // Configure the label
        headerLabel.text = "\(Post.mockPosts[section].user) -- Posted \(Post.mockPosts[section].datePosted)"
        headerLabel.font = headerLabel.font.withSize(13)
        headerLabel.textAlignment = .center
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the header view and set constraints
        headerView.addSubview(headerLabel)
        headerView.backgroundColor = UIColor(red: 128/255.0, green: 208/255.0, blue: 153/255.0, alpha: 1)
        headerView.layer.cornerRadius = 6
        NSLayoutConstraint.activate([
            headerLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            headerLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])

        return headerView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Post.mockPosts[section].comments.count * 2) + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Calculate the adjusted row for handling spacing cells
        let adjustedRow = (indexPath.row + 1) / 2
        
        if indexPath.row == 0 {
            let postCell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
            postCell.postText.text = Post.mockPosts[indexPath.section].text
            postCell.postImage.image = Post.mockPosts[indexPath.section].image
            
            postCell.contentView.layer.cornerRadius = 20
            postCell.postView.layer.cornerRadius = 15
            
            return postCell
        } else if indexPath.row % 2 == 1 {
            let spacingCell = tableView.dequeueReusableCell(withIdentifier: "spacingCell", for: indexPath) as! SpacingTableViewCell
            return spacingCell
        } else {
            let commentCell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! CommentTableViewCell
            commentCell.commentLBL.text = Post.mockPosts[indexPath.section].comments[adjustedRow - 1].text
            commentCell.userCommentedLBL.text = "-" + Post.mockPosts[indexPath.section].comments[adjustedRow - 1].user
            
            commentCell.contentView.layer.cornerRadius = 10
            commentCell.commentView.layer.cornerRadius = 7.5
            
            return commentCell
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
