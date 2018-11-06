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
    
    public func setSuperNode(){
        // Work with your touch here
        let superNode = SKShapeNode(circleOfRadius: 15)
        superNode.fillColor = .black
        superNode.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(superNode)
    }
    
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = UIColor(displayP3Red: CGFloat(Float.random(in: 0 ..< 1)), green: CGFloat(Float.random(in: 0 ..< 1)), blue: CGFloat(Float.random(in: 0 ..< 1)), alpha: CGFloat(Float.random(in: 0 ..< 1)))
        node.position = touch.location(in: self)
        addChild(node)
        
        // Create move action
        let actionDuration = 10.0
        let moveAction = SKAction.move(to: CGPoint(x: size.width/2, y: size.height/2), duration: actionDuration)
        node.run(moveAction)
        
    }
}
