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
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = .red
        node.position = touch.location(in: self)
        addChild(node)
        
        let red = CGFloat.random(in: 0.5...1.0)
        let green = CGFloat.random(in: 0.5...1.0)
        let blue = CGFloat.random(in: 0.5...1.0)
        
        let newColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1.0)
        
        node.fillColor = newColor
    }
}
