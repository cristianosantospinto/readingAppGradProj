//
//  Gustavo13.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo13: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("10gustavo.wav")
        
        let background = SKSpriteNode(imageNamed: "13Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let gustavo = SKSpriteNode(imageNamed: "13")
        gustavo.position = CGPoint(x: size.width/2 - 520, y: size.height/2 - 133)
        gustavo.name = "13"
        addChild(gustavo)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo14(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo12(size:self.size)
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
    
    
}

