//
//  CustomScene2.swift
//  Sprites
//
//  Created by Benjamin Hakes on 11/5/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit
import SpriteKit

class CustomScene2: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Work with your touch here
        let superNode = SKShapeNode(circleOfRadius: 15)
        superNode.fillColor = .red
        superNode.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(superNode)
        
        
    }
}
