//
//  Gustavo5.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo5: SKScene {
    
    override func didMoveToView(view: SKView) {
        
         playBackgroundMusic("3gustavoBus.wav")
        
        let background = SKSpriteNode(imageNamed: "5Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let gustavo = SKSpriteNode(imageNamed: "5gus")
        gustavo.position = CGPoint(x: size.width/2 - 50, y: size.height/2 - 300)
        gustavo.name = "5gus"
        addChild(gustavo)
        
        let stop = SKSpriteNode(imageNamed: "stop")
        stop.position = CGPoint(x: size.width/2 - 640, y: size.height/2 + 150)
        stop.name = "stop"
        addChild(stop)
       
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo7(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo3(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
    
        if (node.name == "5gus") {
            sfx("gustavo.wav")
            
            
        }   else if (node.name == "stop") {
            sfx("bell.wav")
            

 

    
    
    
        }

    }
}