//
//  CustomScene.swift
//  Sprites
//
//  Created by Benjamin Hakes on 11/5/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = UIColor(displayP3Red: CGFloat(Float.random(in: 0 ..< 1)), green: CGFloat(Float.random(in: 0 ..< 1)), blue: CGFloat(Float.random(in: 0 ..< 1)), alpha: CGFloat(Float.random(in: 0 ..< 1)))
        node.position = touch.location(in: self)
        addChild(node)
        
    }
}
