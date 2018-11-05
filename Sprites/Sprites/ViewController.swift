//
//  ViewController.swift
//  Sprites
//
//  Created by Benjamin Hakes on 11/5/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skscene?.setSuperNode()
        skview.presentScene(skscene)
    }

}

