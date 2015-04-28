//
//  GameScene.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 07/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {          //scene setup
  

    let background1 = SKSpriteNode(imageNamed: "scrollingBg1") //scrolling background setup images
    let background2 = SKSpriteNode(imageNamed: "scrollingBg2")
    //let textField = UITextField(frame: CGRectMake(20, 30, 100, 30))
   
      
    
override func didMoveToView(view: SKView) {
    
    playBackgroundMusic("2DV.wav")
    background1.anchorPoint = CGPointZero                       //scrolling background positioning
    background1.position = CGPoint(x: 0,y: 0)
    //background1.zPosition = -15
    self.addChild(background1)
    
    background2.anchorPoint = CGPointZero
    background2.position = CGPoint(x: background1.size.width, y: 0)
    //background2.zPosition = -15
    self.addChild(background2)
    

        /*let textFieldColor = UIColor(red: 130/255, green: 195/255, blue: 249/255, alpha: 1)
        textField.borderStyle = .RoundedRect
        textField.layer.borderColor = UIColor(red: 130/255, green: 195/255, blue: 249/255, alpha: 1).CGColor
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 5
        textField.backgroundColor = textFieldColor
        textField.textColor = UIColor.whiteColor()
        textField.textAlignment = NSTextAlignment.Center
        textField.text = ""
        textField.returnKeyType = UIReturnKeyType.Done
        textField.font = UIFont(name: "ChalkboardSE-Light", size: 16)
        self.view!.addSubview(textField) */
    
        let bookOne = BookObject(imageNamed: "GustavoBook", bookNamed: "bookOne")       //can change to same name as image 'bookNamed...'
        bookOne.position = CGPoint(x: size.width/2 - 350, y: size.height/2)
        bookOne.delegate = self
        addChild(bookOne)
        
        let bookTwo = BookObject(imageNamed: "MonkeyBook", bookNamed: "bookTwo")
        bookTwo.position = CGPoint(x: size.width/2 + 350, y: size.height/2)
        bookTwo.delegate = self
        addChild(bookTwo)

                                                                              //books animation
    
        /*bookOne.physicsBody = SKPhysicsBody(rectangleOfSize: bookOne.size)
        bookOne.physicsBody?.affectedByGravity = true
        bookOne.physicsBody?.dynamic = true
        let physicsBody = SKPhysicsBody (edgeLoopFromRect: self.frame)
        self.physicsBody = physicsBody
        bookOne.physicsBody?.restitution =  1
        self.physicsWorld.gravity.dy = -1 */
    
    
    
    //bounce
    
            //let move = SKAction.moveByX(0, y: 100, duration: 5, delay: 0.3, usingSpringWithDamping: 0.2,    initialSpringVelocity: 0)
            //bookOne.runAction(move)             //damping functions from spriteKit+Spring file
    
            //bookOne.runAction(SKAction.repeatActionForever(SKAction.sequence([move])))
    
            let rotateR = SKAction.rotateByAngle(0.1, duration: 1)
            let rotateL = SKAction.rotateByAngle(-0.1, duration: 1)
            let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
            let wiggle = SKAction.repeatActionForever(cycle)
            bookOne.runAction(wiggle)
            bookTwo.runAction(wiggle)

            bookOne.setScale(0)
            bookTwo.setScale(0)
            let popAction = SKAction.scaleTo(1, duration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0)
            bookOne.runAction(popAction)
            bookTwo.runAction(popAction)
    
    
        let cloud1 = SKSpriteNode(imageNamed: "appCloud1")
        cloud1.position = CGPoint(x: size.width/2 - 350, y: size.height/2 - 190)
        addChild(cloud1)
    
        let cloud2 = SKSpriteNode(imageNamed: "appCloud2")
        cloud2.position = CGPoint(x: size.width/2 + 350, y: size.height/2 - 190)
        addChild(cloud2)
    
    
    }
}


extension GameScene: BookObjectDelegate {       //extend bookObject?            //good practice to put delegates at bottom

    
  func bookTouched() {
    
    }
    
    func transitionToBook(bookName: String) {
        
        
        
        if (bookName == "bookOne") {
            println(bookName)
            let myScene = Gustavo1(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            backgroundMusicPlayer.stop()
            
        } else if (bookName == "bookTwo") {
            println(bookName)
            let myScene = Monkey1(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            backgroundMusicPlayer.stop()
            
        }
        
        
        
        //let defaults = NSUserDefaults.standardUserDefaults()
        //defaults.setObject(textField.text, forKey: "userNameKey")
        //textField.alpha = 0
        
    

        
        
    }
    
    override func update(currentTime: CFTimeInterval) {             //scrolling of background
        
        background1.position = CGPoint(x: background1.position.x - 2, y: background1.position.y)
        background2.position = CGPoint(x: background2.position.x - 2 , y: background2.position.y)
        
        if(background1.position.x < -background1.size.width) //less than
        {
            background1.position = CGPoint(x: background2.position.x + background2.size.width, y: background1.position.y)
        }
        
        if(background2.position.x < -background2.size.width)
        {
            background2.position = CGPoint(x: background1.position.x + background1.size.width, y: background2.position.y)
            
        }
        
        }

    }
