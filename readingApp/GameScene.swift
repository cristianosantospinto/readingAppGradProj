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
        
        
        let bookOne = BookObject(imageNamed: "beachBook", bookNamed: "bookOne")
        bookOne.position = CGPoint(x: size.width/2 - 500, y: size.height/2 + 300)
        bookOne.delegate = self
        addChild(bookOne)
        
        let bookTwo = BookObject(imageNamed: "bookTwo", bookNamed: "bookTwo")
        bookTwo.position = CGPoint(x: size.width/2 + 500, y: size.height/2 + 300)
        bookTwo.delegate = self
        addChild(bookTwo)
        
       /* let bookTwo = BookObject()
        bookTwo.position = CGPoint(x: size.width/2, y: size.height/2 + 300)         //slightly offset to book one
        bookTwo.bookName = "Book Two"
        bookTwo.delegate = self
        addChild(bookTwo)
        
        let bookThree = BookObject()
        bookThree.position = CGPoint(x: size.width/2 + 500, y: size.height/2 + 300)
        bookThree.bookName = "Book Three"
        bookThree.delegate = self
        addChild(bookThree)
        
        let bookFour = BookObject()
        bookFour.position = CGPoint(x: size.width/2 - 500, y: size.height/2 - 200)
        bookFour.bookName = "Book Four"
        bookFour.delegate = self
        addChild(bookFour)
        
        let bookFive = BookObject()
        bookFive.position = CGPoint(x: size.width/2, y: size.height/2 - 200)
        bookFive.bookName = "Book Five"
        bookFive.delegate = self
        addChild(bookFive)
        
        let bookSix = BookObject()
        bookSix.position = CGPoint(x: size.width/2 + 500, y: size.height/2 - 200)
        bookSix.bookName = "Book Six"
        bookSix.delegate = self
        addChild(bookSix)
*/
    }
    
    
    
}

extension GameScene: BookObjectDelegate {                           //good practice to put delegates at bottom
    
    func bookTouched() {
        //make something interesting happen when touched (particle)
        
    }
    
    func transitionToBook(bookName: String) {
        
        println(bookName)
    }
    
}

//println("")