import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
     
        let position = touch.location(in: self)
       
       

        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomColor()
        node.position = touch.location(in: self)
        addChild(node)
        
        
        
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.5)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.3)
        let sequenceAction = SKAction.sequence([zoomAction, unzoomAction])
        node.run(sequenceAction)
        
      
        
    }
    
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.0 ... 1.0)
        let green = CGFloat.random(in: 0.0 ... 1.0)
        let blue = CGFloat.random(in: 0.0 ... 1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

