//
//  CustomScene.swift
//  Sprites
//
//  Created by Vijay Das on 11/5/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import Foundation

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = .red
        node.position = touch.location(in: self)
        addChild(node)
        
        
    }
}
