//
//  ViewController.swift
//  Tech Social Media App
//
//  Created by David Granger on 2/23/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePicView.layer.cornerRadius = 20
        profileBackground.layer.cornerRadius = 15
        
        postView.layer.cornerRadius = 20
        subView.layer.cornerRadius = 15
        
        detailView.layer.cornerRadius = 10
        subDetailView.layer.cornerRadius = 7.5
    }
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var postView: UIView!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var profilePicView: UIView!
    @IBOutlet weak var profileBackground: UIImageView!
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var subDetailView: UIView!
}

