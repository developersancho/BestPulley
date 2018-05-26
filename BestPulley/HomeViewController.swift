//
//  ViewController.swift
//  BestPulley
//
//  Created by developersancho on 25.05.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addPullUpController()
    }

    private func addPullUpController() {
        guard
            let pullUpController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "contentMenuViewController") as? ContentMenuViewController
            else { return }
        
        addPullUpController(pullUpController)
    }
}

