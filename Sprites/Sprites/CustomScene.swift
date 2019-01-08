//
//  CustomScene.swift
//  Sprites
//
//  Created by Luis Corvalan on 1/8/19.
//  Copyright © 2019 Luis Corvalan. All rights reserved.
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
        
        // Work with your touch here
    }
    
}
