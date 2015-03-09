import SpriteKit

protocol BookObjectDelegate: class {
    func transionToBook(bookName: String)
    func bookTouched()
}

class BookObject: SKSpriteNode {
    
    var bookName: String?
    weak var delegate: BookObjectDelegate?
    
    override init(){
        let texture = SKTexture(imageNamed: "80x80")                //texture essentially is just image (images have textures)
        super.init(texture: texture, color: nil, size: texture.size())
        userInteractionEnabled = true
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        delegate?.bookTouched()
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        for touch in touches {
            let location = touch.locationInNode(scene)
            let touchedNode = nodeAtPoint(location)
            let distance = hypotf(Float(location.x - position.x), Float(location.y - position.y))
            
            if let bookName = bookName {
                if distance < 200 {                                 //if user presses/drags anywhere 200px away then cancel presss
                   delegate?.transionToBook(bookName)
                }
                
            }
            
        }
    }
    
    
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
}