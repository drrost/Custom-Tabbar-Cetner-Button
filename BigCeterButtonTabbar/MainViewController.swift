//
//  MainViewController.swift
//  BigCeterButtonTabbar
//
//  Created by Rostyslav Druzhchenko on 10/19/17.
//  Copyright © 2017 Rostyslav Druzhchenko. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
  
  @IBOutlet weak var centerButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCenterButton()
  }
  
  fileprivate func setupCenterButton() {
    tabBar.addSubview(centerButton)
    centerButton.translatesAutoresizingMaskIntoConstraints = false
    centerButton.centerYAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true
    centerButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor).isActive = true
    let customTabbar = tabBar as! MainMenuTabbar
    customTabbar.centerButton = centerButton
  }
  
  @IBAction fileprivate func unwindToMainViewController(_ segue: UIStoryboardSegue) {}
  
}
