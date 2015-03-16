import SpriteKit

protocol BookObjectDelegate: class {
    func transitionToBook(bookName: String)             //protocol
    func bookTouched()
}

class BookObject: SKSpriteNode {
    
    var bookName: String?
    weak var delegate: BookObjectDelegate?          //delegate protocol
    

    init(imageNamed: String, bookNamed: String){  // custom initializer
        let texture = SKTexture(imageNamed: imageNamed)
        super.init(texture: texture, color: nil, size: texture.size())
        userInteractionEnabled = true
        bookName = bookNamed
        
   }
    

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {              //
        delegate?.bookTouched()
        
    }
    
    

    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        for touch in touches {
            let location = touch.locationInNode(scene)
            let touchedNode = nodeAtPoint(location)                                                 //drag/click?
            let distance = hypotf(Float(location.x - position.x), Float(location.y - position.y)) //drag/click
            
            if let bookName = bookName {
                if distance < 200 {                                 //drag/click - if user presses/drags anywhere 200px away then cancel press
                   delegate?.transitionToBook(bookName)
                }
                
            }
            
        }
    }
    
    
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
}