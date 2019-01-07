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
        
        let randomColor = UIColor.random(from: [.red, .yellow, .green, .blue, .purple])
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor!
        node.position = touch.location(in: self)
        addChild(node)
    }
}

