//
//  Gustavo8.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo8: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("5gustavo.wav")
        
        let background = SKSpriteNode(imageNamed: "8Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let gustavo = SKSpriteNode(imageNamed: "8gus")
        gustavo.position = CGPoint(x: size.width/2 - 470, y: size.height/2 - 330)
        gustavo.name = "8gus"
        addChild(gustavo)
        
        let boy1 = SKSpriteNode(imageNamed: "8boy1")
        boy1.position = CGPoint(x: size.width/2 + 700, y: size.height/2 - 70)
        boy1.name = "8boy1"
        addChild(boy1)
        
        let boy2 = SKSpriteNode(imageNamed: "8boy2")
        boy2.position = CGPoint(x: size.width/2 - 345, y: size.height/2 + 70)
        boy2.name = "8boy2"
        addChild(boy2)
        
        let boy3 = SKSpriteNode(imageNamed: "8boy3")
        boy3.position = CGPoint(x: size.width/2 + 100, y: size.height/2 + 170)
        boy3.name = "8boy3"
        addChild(boy3)
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo9(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo7(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "2gus") {
            sfx("train.wav")
            
            
        }   else if (node.name == "") {
            sfx("")
            
            
        }
    
    
    
}

