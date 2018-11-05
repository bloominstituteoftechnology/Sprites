import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        //node.fillColor = .red
        node.fillColor = UIColor(red: .random(in: 0.5...1.0), green: .random(in: 0.5...1.0), blue: .random(in: 0.5...1.0), alpha: 1.0)
        node.position = touch.location(in: self)
        addChild(node)
        

    }
}
