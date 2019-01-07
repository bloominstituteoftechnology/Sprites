//
//  CustomScene.swift
//  Sprites
//
//  Created by Michael Flowers on 1/7/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    var colorArray = [UIColor.red, UIColor.blue, UIColor.cyan, UIColor.brown, UIColor.orange, UIColor.purple, UIColor.darkGray, UIColor.green, UIColor.yellow]
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        let randomColor = Int(arc4random_uniform(UInt32(colorArray.count)))
        
        //shape nodes
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = colorArray[randomColor]
        node.position = touch.location(in: self)
        addChild(node)
    }
}
