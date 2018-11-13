//
//  CustomScene.swift
//  Sprites
//
//  Created by Sameera Leola on 11/13/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor()
        node.position = touch.location(in: self)
        addChild(node)
    }
    
    
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.25...0.75)
        let green = CGFloat.random(in: 0.25...0.75)
        let blue = CGFloat.random(in: 0.25...0.75)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
