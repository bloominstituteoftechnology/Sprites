//
//  CustomScene.swift
//  Sprites
//
//  Created by Franck Tchouambou on 1/8/19.
//  Copyright © 2019 Franck. All rights reserved.
//

import Foundation

import UIKit
import SpriteKit


func randomCGFloat() -> CGFloat {
    return CGFloat(arc4random()) / CGFloat(UInt32.max)
}

func randomUIColor() -> UIColor {
    let alphaNumber = CGFloat(Double.random(in: 0.5...1.0))
    
    return UIColor(red: randomCGFloat(), green: randomCGFloat(), blue: randomCGFloat(), alpha: alphaNumber)
}





class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomUIColor()
        node.position = touch.location(in: self)
        addChild(node)
    }
    
    
    
    
}
