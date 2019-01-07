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
        
        let bounds = UIScreen.main.bounds
        let width = bounds.size.width
        let height = bounds.size.height
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor()
        node.position = CGPoint(x: width/2, y: height/2)
        //node.position = touch.location(in: self)
        addChild(node)
        
        let scaleUp = SKAction.scale(to: 1.3, duration: 0.5)
        let scaleDown = SKAction.scale(to: 1.0, duration: 0.5)
        let position = SKAction.move(to: touch.location(in: self), duration: 1.0)
        let sequence = SKAction.sequence([scaleUp, scaleDown])
        let moveSequence = SKAction.sequence([position])
        node.run(moveSequence)
        node.run(sequence)
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
