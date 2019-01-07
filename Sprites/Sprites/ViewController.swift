import UIKit
import SpriteKit

class ViewController: UIViewController {
    @IBOutlet var skview: SKView!
    
    var skscene: CustomeScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomeScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }

}

