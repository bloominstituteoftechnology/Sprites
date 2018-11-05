//
//  ViewController.swift
//  Sprites
//
//  Created by Lambda_School_Loaner_18 on 11/5/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
