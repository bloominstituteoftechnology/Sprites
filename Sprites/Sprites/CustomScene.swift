import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomUIColor()
        node.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(node)
        
        let largeNodeSize = SKAction.scale(by: 1.3, duration: 0.3)
        let normalNodeSize = SKAction.scale(to: 1.0, duration: 0.1)
        let sequenceSizeAction = SKAction.sequence([largeNodeSize, normalNodeSize])
        
        node.run(sequenceSizeAction)
        
        let nodeTouchPosition = touch.location(in: self)
        let nodePositionSequence = SKAction.move(to: nodeTouchPosition, duration: 0.2)
        
        node.run(nodePositionSequence)
    }
    
    func randomCGFloat() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    
    func randomUIColor() -> UIColor {
        let alphaNumber = CGFloat(Double.random(in: 0.5...1.0))
        
        return UIColor(red: randomCGFloat(), green: randomCGFloat(), blue: randomCGFloat(), alpha: alphaNumber)
    }
}
