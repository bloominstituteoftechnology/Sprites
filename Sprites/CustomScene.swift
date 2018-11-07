import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        func getRandomColor() -> UIColor {
            //Generate between 0 to 1
            let red:CGFloat = CGFloat(drand48())
            let green:CGFloat = CGFloat(drand48())
            let blue:CGFloat = CGFloat(drand48())
            let _:CGFloat = CGFloat(drand48())
            
            return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
        }


        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 9)
        node.fillColor = getRandomColor()
        node.position = touch.location(in: self)
        addChild(node)
        
        
        
        let position =  CGPoint(x: frame.midX, y: frame.midY)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.5)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let sequenceAction = SKAction.sequence([zoomAction, unzoomAction])
        node.run(sequenceAction)
        
        let moveAction = SKAction.move(to: position, duration: 2.0)
        node.run(moveAction)
        
        
    }
        
        
        
        
                // Work with your touch here
}
