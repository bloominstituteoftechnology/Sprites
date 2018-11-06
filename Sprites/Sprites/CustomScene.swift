import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
       
        // Retrieve position
        let position = touch.location(in: self)
        
        // Work with your touch here
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = getRandomColor()
        
        // Set the nodes orgin at the center of the screen
        node.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(node)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.5)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.5)
        let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
        node.run(sequenceAction)
    }
    
    // Generate random node color
    func getRandomColor() -> UIColor {
        let randomRed:CGFloat = CGFloat(inRange(drand48()))
        let randomGreen:CGFloat = CGFloat(inRange(drand48()))
        let randomBlue:CGFloat = CGFloat(inRange(drand48()))
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    /*
       Set color boundaries
       drand48() will generate a double between 0 and 1. I add 0.5 to any number generated
       less than zero to meet the requested range of "0.5 ... 1.0 for brighter colors."
    */
    func inRange(_ x: Double) -> Double {
        if (x < 0.5) {
            return x + 0.5
        }
        return x
    }
}
