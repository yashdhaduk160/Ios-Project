//
//  ViewController.swift
//  DoPro
//
//  Created by Yash Dhaduk on 27/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_getstart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btn_getstart.layer.cornerRadius = btn_getstart.frame.height/2
    }

    @IBAction func btn_getstart(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegistrationVC") as! RegistrationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

