import Foundation
import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        guard !touches.isEmpty, let touch = touches.first
            else { return }
        func randomColor() -> UIColor {
            let red = CGFloat.random(in: 0.5 ... 1.0)
            let green = CGFloat.random(in: 0.5 ... 1.0)
            let blue = CGFloat.random(in: 0.5 ... 1.0)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
        
        
        let node = SKShapeNode(circleOfRadius: 8)
        addChild(node)
        node.fillColor = randomColor()
        // record touchposition
        node.position = touch.location(in: self)
//        node.position = touch.location(in: self)

//        let centerAction = node.location(CGPoint(x: frame.midX, y: frame.midY))
//        let touchPositionAction = node.position(touchPosition)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(by: 1.0, duration: 0.1)
        let sequenceAction = SKAction.sequence([zoomAction, unzoomAction])
        node.run(sequenceAction)

 }

}
