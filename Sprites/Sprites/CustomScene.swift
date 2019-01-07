//
//  CustomScene.swift
//  Sprites
//
//  Created by Dustin Koch on 1/7/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor
        node.position = touch.location(in: self)
        addChild(node)
        
    }
}

var randomColor: UIColor {
    let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
    let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
    let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
    
    return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
}
