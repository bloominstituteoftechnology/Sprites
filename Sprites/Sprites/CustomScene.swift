import UIKit
import SpriteKit

extension UIColor {
    static func random(from colors: [UIColor]) -> UIColor? {
        return colors.randomElement()
        }
}

class CustomeScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let randomRedValue = 0.5 + CGFloat(arc4random_uniform(51))/100
        let randomGreenValue = 0.5 + CGFloat(arc4random_uniform(51))/100
        let randomBlueValue = 0.5 + CGFloat(arc4random_uniform(51))/100
        let randomColor = UIColor(red: randomRedValue, green: randomGreenValue, blue: randomBlueValue, alpha: 1.0)
        
        
        let scale = SKAction.scale(to: 1.3, duration: 0.5)
        let move = SKAction.move(to: touch.location(in: self), duration: 0.5)
        let sequence = SKAction.sequence([scale, move])
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor
        node.position = CGPoint(x: frame.midX, y: frame.midY)
        node.run(sequence)
        addChild(node)
    }
    
}

