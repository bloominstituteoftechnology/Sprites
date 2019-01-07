//
//  ViewController.swift
//  Sprites
//
//  Created by Jocelyn Stuart on 1/7/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skview.presentScene(skScene)
    }

    @IBOutlet weak var skview: SKView!
    
    var skScene: CustomScene? = nil
    
   
    
}

