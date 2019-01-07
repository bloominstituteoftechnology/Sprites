//
//  ViewController.swift
//  Sprites
//
//  Created by Michael Flowers on 1/7/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySkview: SKView!
    
    var skscene : CustomScene? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        mySkview.presentScene(skscene)
    }
    

}

