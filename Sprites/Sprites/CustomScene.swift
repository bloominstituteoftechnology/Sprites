import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        
        let node = SKShapeNode(circleOfRadius: 8)
        node .fillColor = .yellow
        node.position = touch.location(in: self)
        addChild(node)
    }
}
