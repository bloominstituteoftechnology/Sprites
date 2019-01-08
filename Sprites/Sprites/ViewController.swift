//
//  ViewController.swift
//  Sprites
//
//  Created by Mary Kajiwara on 1/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
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
