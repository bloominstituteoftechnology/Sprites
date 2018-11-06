import UIKit
import SpriteKit

func randomColor() -> UIColor {
    let range = 0.5...256.0 as ClosedRange<CGFloat>
    return UIColor (red: CGFloat.random(in: range),
                    green: CGFloat.random(in: range),
                    blue: CGFloat.random(in: range),
                    alpha: 2)
}


class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor()
        node.position = touch.location(in: self)
        addChild(node)
        
        
    }
}
