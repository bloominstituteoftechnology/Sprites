//
//  ViewController.swift
//  Sprites
//
//  Created by Rob Herold on 11/13/18.
//  Copyright © 2018 Rob Herold. All rights reserved.
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

    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.25...0.75)
        let green = CGFloat.random(in: 0.25...0.75)
        let blue = CGFloat.random(in: 0.25...0.75)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

