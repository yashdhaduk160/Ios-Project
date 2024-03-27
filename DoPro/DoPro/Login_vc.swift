//
//  Login_vc.swift
//  DoPro
//
//  Created by Yash Dhaduk on 27/03/24.
//

import UIKit

class Login_vc: UIViewController {

    @IBOutlet weak var txt_view1: UIView!
    
    @IBOutlet weak var txt_view2: UIView!
    
    @IBOutlet weak var btn_login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txt_view1.layer.cornerRadius = txt_view1.frame.height/2
        self.txt_view2.layer.cornerRadius = txt_view2.frame.height/2
        self.btn_login.layer.cornerRadius = btn_login.frame.height/2


    }
    

    

}
