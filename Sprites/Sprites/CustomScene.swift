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
      //  node.position = touch.location(in: self)
        node.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(node)
        
        //let position = node.position = touch.location(in: self)
        let position = touch.location(in: self)
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let sequenceAction = SKAction.sequence([moveAction, zoomAction,  unzoomAction])
        node.run(sequenceAction)
    }
    
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.25...0.75)
        let green = CGFloat.random(in: 0.25...0.75)
        let blue = CGFloat.random(in: 0.25...0.75)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
