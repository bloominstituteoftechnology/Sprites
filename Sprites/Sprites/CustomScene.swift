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
        node.fillColor = .red
        node.position = touch.location(in: self)
        addChild(node)
        
    }
}
