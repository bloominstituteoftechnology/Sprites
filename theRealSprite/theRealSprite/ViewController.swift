//
//  ViewController.swift
//  theRealSprite
//
//  Created by Diante Lewis-Jolley on 1/7/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    var skScene: CustomScene? = nil

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skview.presentScene(skScene)
    }


   
    @IBOutlet weak var skview: SKView!
    

}

