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
            
            return UIColor(red:red, green: green, blue: blue, alpha: 5.0)
        }


        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 9)
        node.fillColor = getRandomColor()
        node.position = touch.location(in: self)
        addChild(node)
        
        
    }
        
        
        
        
                // Work with your touch here
}
