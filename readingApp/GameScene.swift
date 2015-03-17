//
//  GameScene.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 07/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {          //scene setup
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.lightGrayColor()
        
        let bookOne = BookObject(imageNamed: "beachBook", bookNamed: "bookOne")       //cab change to same name as image 'bookNamed...'
        bookOne.position = CGPoint(x: size.width/2 - 500, y: size.height/2 + 300)
        bookOne.delegate = self
        addChild(bookOne)
        
        let bookTwo = BookObject(imageNamed: "book2", bookNamed: "bookTwo")
        bookTwo.position = CGPoint(x: size.width/2, y: size.height/2 + 300)
        bookTwo.delegate = self
        addChild(bookTwo)
        
        let bookThree = BookObject(imageNamed: "book3", bookNamed: "bookThree")
        bookThree.position = CGPoint(x: size.width/2 + 500, y: size.height/2 + 300)
        bookThree.delegate = self
        addChild(bookThree)
        
        let bookFour = BookObject(imageNamed: "book4", bookNamed: "bookFour")
        bookFour.position = CGPoint(x: size.width/2 - 500, y: size.height/2 - 200)
        bookFour.delegate = self
        addChild(bookFour)
        
        let bookFive = BookObject(imageNamed: "book5", bookNamed: "bookFive")
        bookFive.position = CGPoint(x: size.width/2, y: size.height/2 - 200)
        bookFive.delegate = self
        addChild(bookFive)
        
        let bookSix = BookObject(imageNamed: "book6", bookNamed: "bookSix")
        bookSix.position = CGPoint(x: size.width/2 + 500, y: size.height/2 - 200)
        bookSix.delegate = self
        addChild(bookSix)
        
    
    }
    
}


extension GameScene: BookObjectDelegate {       //extend bookObject?            //good practice to put delegates at bottom

    
  func bookTouched() {
    
    }
    
    func transitionToBook(bookName: String) {
        
        
        
        if (bookName == "bookOne") {
            println(bookName)
            let myScene = BeachScene1(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookTwo") {
            println(bookName)
            let myScene = testScene(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
        
        } else if (bookName == "bookThree") {
            println(bookName)
            let myScene = testScene(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookFour") {
            println(bookName)
            let myScene = testScene(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookFive") {
            println(bookName)
            let myScene = testScene(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookSix") {
            println(bookName)
            let myScene = testScene(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)



    
        }
    
    
    }

}
