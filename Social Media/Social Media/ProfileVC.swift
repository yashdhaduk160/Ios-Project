//
//  ProfileVC.swift
//  Social Media
//
//  Created by Yash Dhaduk on 06/03/24.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var view_profile: UIView!
    @IBOutlet weak var view_prifile_inner: UIView!
    @IBOutlet weak var image_profile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view_profile.layer.cornerRadius = 20
        self.view_prifile_inner.layer.cornerRadius = 20
        self.view_profile.layer.borderWidth = 2
        self.view_profile.layer.borderColor = UIColor.black.cgColor
        rotate(view: view_profile, degrees: 45)
        rotate(view: image_profile, degrees: -45)
        // Do any additional setup after loading the view.
    }

}
