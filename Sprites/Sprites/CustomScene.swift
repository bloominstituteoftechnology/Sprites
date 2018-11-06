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
        addChild(node)
        //Done
        
        
    }
}

//generates random color

public extension UIColor {
    public static var random: UIColor {
        let max = CGFloat(UInt32.max)
        let red = CGFloat(Float.random(in: 0...1))
        let blue = CGFloat(Float.random(in: 0...1))
        let green = CGFloat(Float.random(in: 0...1))
        
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    }
}

