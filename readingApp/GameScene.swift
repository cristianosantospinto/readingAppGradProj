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
        
        
        //let background = SKSpriteNode(imageNamed: "gameScene") //grab image 'scene1'
        //background.position = CGPoint(x: size.width/2, y: size.height/2)  //centralise image
        //addChild(background)                                            //display image
        
        
        let bookOne = BookObject(imageNamed: "beachBook", bookNamed: "bookOne")  //just call same name as image 'bookNamed...'
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

 //good practice to put delegates at bottom


extension GameScene: BookObjectDelegate {       //extend bookObject?
    
    
    /*override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        super.touchesBegan(touches, withEvent: event)


            let location = touches.anyObject()?.locationInNode(self)
            let touchedNode = self.nodeAtPoint(location!)
        
        if touchedNode == "bookOne" {
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 0.5)
            
            let scene = BeachScene1(size:self.size)
            scene.scaleMode = SKSceneScaleMode.AspectFill
            
            self.view?.presentScene(scene, transition: transition)
            
        }
        
    } */

    
  func bookTouched() { // if/when 'bookOne is touched tranisiton scene to 'BeachScene1'
    /*
    let location = touch.locationInNode(self)
    let touchedNode = self.nodeAtPoint(location)
    
  }

*/
    }
    func transitionToBook(bookName: String) {
        
        
        
        if (bookName == "bookOne") {                        //switch statement
            println(bookName)
            let myScene = BeachScene1(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookTwo") {
            println(bookName)
            let myScene = scene3(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
        
        } else if (bookName == "bookThree") {
            println(bookName)
            let myScene = scene3(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookFour") {
            println(bookName)
            let myScene = scene3(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookFive") {
            println(bookName)
            let myScene = scene3(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)
            
        } else if (bookName == "bookSix") {
            println(bookName)
            let myScene = scene3(size:self.size)
            myScene.scaleMode = scaleMode
            let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
            self.view?.presentScene(myScene, transition: reveal)



    
        }
    
    
        /*
        let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 0.5)
        let scene = BeachScene1(size:self.size)
        scene.scaleMode = SKSceneScaleMode.AspectFill
        self.view?.presentScene(scene, transition: transition)
        println(bookName)
    }
*/
}

}
