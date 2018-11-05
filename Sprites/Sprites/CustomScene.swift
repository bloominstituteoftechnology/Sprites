//
//  CustomScene.swift
//  Sprites
//
//  Created by Austin Cole on 11/5/18.
//  Copyright © 2018 Austin Cole. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        //Return a random color - drand48() returns a random double between 0 and 1 - we convert the double into a float by type casting the result of drand48 to CGFloat, because UIColor() can only take a float
        func getRandomColor() -> UIColor {
            let randomRed: CGFloat = CGFloat(drand48())
            let randomGreen: CGFloat = CGFloat(drand48())
            let randomBlue: CGFloat = CGFloat(drand48())
            return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        }
        
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = getRandomColor()
        node.position = touch.location(in: self)
        addChild(node)
        
        // Work with your touch here
    }
}
