//
//  CustomScene.swift
//  Sprites
//
//  Created by Angel Buenrostro on 1/7/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
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
        return UIColor(
            red: CGFloat.random(in: 0.5...1),
            green: CGFloat.random(in: 0.5...1),
            blue: CGFloat.random(in: 0.5...1),
            alpha: 1.0
        )
    }
}
