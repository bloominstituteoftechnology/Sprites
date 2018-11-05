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
            var randomRed: CGFloat = CGFloat(drand48())
            var randomGreen: CGFloat = CGFloat(drand48())
            var randomBlue: CGFloat = CGFloat(drand48())
            if randomRed < 0.5 {
                randomRed += 0.5
            }
            if randomBlue < 0.5 {
                randomBlue += 0.5
            }
            if randomGreen < 0.5 {
                randomGreen += 0.5
            }
            return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        }
        
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = getRandomColor()
        node.position = touch.location(in: self)
        addChild(node)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let sequenceAction = SKAction.sequence([zoomAction,unzoomAction])
        node.run(sequenceAction)
        
        // Work with your touch here
    }
}
