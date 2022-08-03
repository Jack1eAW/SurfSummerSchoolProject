//
//  MainViewController.swift
//  SurfSummerSchoolProject
//
//  Created by Aleksandr Chebotarev on 8/3/22.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button1 = UIBarButtonItem(image: UIImage(named: "searchIcon"), style: .plain, target: self, action: Selector(("action")))
        self.navigationItem.rightBarButtonItem  = button1
        title = "Главная"
        
    }

}
