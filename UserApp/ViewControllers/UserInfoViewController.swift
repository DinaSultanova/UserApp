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
    
    @IBOutlet weak var userInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        
        userInfoLabel.numberOfLines = 0
        userInfoLabel.text = "Приветсвую в своем приложении! Я Дина, мне 29 лет. Сейчас нахожусь в декретном отпуске. Мы с семьей меньше года назад переехали в Москву  по его  работе в IT сфере, мне тоже всегда хотелось научиться:) Сейчас я в процессе исполнения своей мечты, учусь на разработчика, перебарывая свои страхи и желания все бросить, опустив руки. Одно из любимых занятий для души пазлы, мечтаю собрать самый большой и 42 000 деталей! А пока мой максимум 4000. "
    }
    
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   //     guard let imageVC = segue.destination as? ImageViewController else { return }
  //      imageVC.user = user
  //  }
}
