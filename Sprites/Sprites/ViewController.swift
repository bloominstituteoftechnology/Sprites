//
//  ViewController.swift
//  Sprites
//
//  Created by Sameera Leola on 11/13/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    var skscene: CustomScene? = nil

    @IBOutlet weak var skview: SKView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size) //size is a parameter that is passed to the init which = Java constructor
        skview.presentScene(skscene)
    }


}
