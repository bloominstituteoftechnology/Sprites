//
//  ViewController.swift
//  Sprites
//
//  Created by Sergey Osipyan on 11/5/18.
//  Copyright © 2018 Sergey Osipyan. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    @IBOutlet var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}

