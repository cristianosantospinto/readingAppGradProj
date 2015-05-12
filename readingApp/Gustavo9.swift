//
//  Gustavo9.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo9: SKScene {
    
    override func didMoveToView(view: SKView) {
        
       playBackgroundMusic("6gustavo.mp3")
        
        let background = SKSpriteNode(imageNamed: "9gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let gustavo = SKSpriteNode(imageNamed: "9gus")
        gustavo.position = CGPoint(x: size.width/2 + 770, y: size.height/2 - 270)
        gustavo.name = "9gus"
        addChild(gustavo)
        
        let george = SKSpriteNode(imageNamed: "9george")
        george.position = CGPoint(x: size.width/2 - 530, y: size.height/2 + 70)
        george.name = "9george"
        addChild(george)
        
        let boy1 = SKSpriteNode(imageNamed: "9boy")
        boy1.position = CGPoint(x: size.width/2 + 340, y: size.height/2 + 50)
        boy1.name = "9boy"
        addChild(boy1)
        
        let boy2 = SKSpriteNode(imageNamed: "9boy2")
        boy2.position = CGPoint(x: size.width/2 + 10, y: size.height/2 + 270)
        boy2.name = "9boy2"
        addChild(boy2)
        
        let boy3 = SKSpriteNode(imageNamed: "9boy3")
        boy3.position = CGPoint(x: size.width/2 + 650, y: size.height/2 + 330)
        boy3.name = "9boy3"
        addChild(boy3)

        
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo12(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo8(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "9gus") {
             sfx("gustavo.mp3")
            
        }   else if (node.name == "9george") {
             sfx("yay2.mp3")
            
            
        }   else if (node.name == "9boy") {
            sfx("yay.mp3")
            
            
        }    else if (node.name == "9boy2") {
            sfx("ohMan.mp3")
            
        }   else if (node.name == "9boy3") {
            sfx("ohMan2.mp3")
            
        }
    }
    
}
