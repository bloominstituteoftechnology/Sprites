//
//  ViewController.swift
//  Sprites MBP


import UIKit
import SpriteKit


class ViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    // assign the variable skscene to the type of CustomScene (if it contains anything) and set it to nil
    var skscene: CustomScene? = nil
    
    // add the scene into the view when it is opened
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

