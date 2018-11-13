import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        
        let position = touch.location(in: self)
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor()
        node.position = touch.location(in: self)
        addChild(node)
        
    }
    
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.0 ... 1.0)
        let green = CGFloat.random(in: 0.0 ... 1.0)
        let blue = CGFloat.random(in: 0.0 ... 1.0)
        
        return UIColor(red: red, green: green, blue: green, alpha: 1.0)
    }
}

