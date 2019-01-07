//
//  CustomScene.swift
//  Sprites
//
//  Created by Nelson Gonzalez on 1/7/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
   
    

    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        
       let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = .random
       node.position = touch.location(in: self)
        
      
        let zoomInAction = SKAction.scale(to: 0.5, duration: 1)
        node.run(zoomInAction)
        addChild(node)
    }
    
    
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0.5...1),
                       green: .random(in: 0.5...1),
                       blue: .random(in: 0.5...1),
                       alpha: 1.0)
    }
}
