//
//  CustomScene.swift
//  Sprites
//
//  Created by Cameron Dunn on 1/7/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = UIColor(red: CGFloat.random(in: 0.5..<1), green: CGFloat.random(in: 0.5..<1), blue: CGFloat.random(in: 0.5..<1), alpha: 1)
        node.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(node)
        let swell = SKAction.scale(to: 2.3, duration: 0.5)
        let returnToNormal = SKAction.scale(to: 1, duration: 0.5)
        let move = SKAction.move(to: touch.location(in: self), duration: 0.5)
        let sequence = SKAction.sequence([move, swell, returnToNormal])
        node.run(sequence)
    }
}
