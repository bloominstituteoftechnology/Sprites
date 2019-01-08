//
//  ViewController.swift
//  Sprites
//
//  Created by Vijay Das on 1/7/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }

    @IBOutlet var skview: SKView!
    
    var skscene: CustomScene? = nil
}
