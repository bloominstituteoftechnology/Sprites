//
//  ViewController.swift
//  Sprites
//
//  Created by Sameera Leola on 11/5/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
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
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }


}

