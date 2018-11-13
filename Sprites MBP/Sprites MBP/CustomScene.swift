//
//  CustomScene.swift
//  Sprites MBP
//

import Foundation
import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        // size of node
        let node = SKShapeNode(circleOfRadius: 8)
        
        // color of node
        node.fillColor = .red
        
        // placement of node
        node.position = touch.location(in: self)
        addChild(node)
        
        // randomize color of node each time it's touched
        let red = CGFloat.random(in: 0.5...1.0)
        let green = CGFloat.random(in: 0.5...1.0)
        let blue = CGFloat.random(in: 0.5...1.0)
        
        let newColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1.0)
        node.fillColor = newColor
        
        // zoom and unzoom node when touched
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let sequenceAction = SKAction.sequence([zoomAction, unzoomAction])
        node.run(sequenceAction)
    }
}
