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

extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }
}


class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = .random
        node.position = touch.location(in: self)
        addChild(node)
    }
}
