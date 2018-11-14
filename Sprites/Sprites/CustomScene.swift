import Foundation
import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        guard !touches.isEmpty, let touch = touches.first
            else { return }
  
        
        let node = SKShapeNode(circleOfRadius: 8)
        addChild(node)
        node.fillColor = randomColor()
        node.position = (CGPoint(x: frame.midX, y: frame.midY))

        let touchPosition = touch.location(in: self)

        let actionDuration = 1.0
        let moveAction = SKAction.move(to: touchPosition, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 2.4, duration: 0.3)
        let unzoomAction = SKAction.scale(by: 0.5, duration: 0.3)
        let sequenceAction = SKAction.sequence([moveAction, zoomAction, unzoomAction, moveAction])
        node.run(sequenceAction)

 }
    
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.5 ... 1.0)
        let green = CGFloat.random(in: 0.5 ... 1.0)
        let blue = CGFloat.random(in: 0.5 ... 1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

}
