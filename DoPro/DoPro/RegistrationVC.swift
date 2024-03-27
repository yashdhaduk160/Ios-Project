//
//  RegistrationVC.swift
//  DoPro
//
//  Created by Yash Dhaduk on 27/03/24.
//

import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var txt_view: UIView!
    
    @IBOutlet weak var txt_view2: UIView!
    @IBOutlet weak var txt_view3: UIView!
    @IBOutlet weak var btn_register: UIButton!
    
    @IBOutlet weak var txt_view4: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.txt_view.layer.cornerRadius = txt_view.frame.height/2
        self.txt_view2.layer.cornerRadius = txt_view2.frame.height/2
        self.txt_view3.layer.cornerRadius = txt_view3.frame.height/2
        self.txt_view4.layer.cornerRadius = txt_view4.frame.height/2
        self.btn_register.layer.cornerRadius = btn_register.frame.height/2
        
        
    }
    
    
    
}
