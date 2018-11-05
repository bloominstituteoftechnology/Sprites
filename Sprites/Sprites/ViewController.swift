//
//  ViewController.swift
//  Sprites
//
//  Created by Austin Cole on 11/5/18.
//  Copyright © 2018 Austin Cole. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    
    var skScene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skview.presentScene(skScene)
    }
}


