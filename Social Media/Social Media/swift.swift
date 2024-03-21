//
//  File.swift
//  Social Media
//
//  Created by Yash Dhaduk on 06/03/24.
//

import Foundation
import UIKit

//MARK: - rotate -

func rotate(view: UIView, degrees: CGFloat) {
    view.transform = CGAffineTransform(rotationAngle: degreesToRadians(degrees: degrees))
    
    func degreesToRadians(degrees: CGFloat) -> CGFloat {
        return degrees * .pi / 180.0
    }
}

//MARK: - navigation -

func navigatescreen(StoryboardName: String, ScreenName: String, from viewcontroller: UIViewController) {
    
    let vc = UIStoryboard(name: StoryboardName, bundle: nil).instantiateViewController(withIdentifier: ScreenName)
    viewcontroller.navigationController?.pushViewController(vc, animated: true)
    
}
