//
//  UserInfoViewController.swift
//  UserApp
//
//  Created by Дина on 22.12.2021.
//

import Foundation
import UIKit

class UserInfoViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
    }
    
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   //     guard let imageVC = segue.destination as? ImageViewController else { return }
  //      imageVC.user = user
  //  }
}
