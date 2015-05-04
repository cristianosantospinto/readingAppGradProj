//
//  Gustavo12.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo12: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("9gustavo.wav")
        
        let background = SKSpriteNode(imageNamed: "12Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let sarah = SKSpriteNode(imageNamed: "sarah")
        sarah.position = CGPoint(x: size.width/2 - 760, y: size.height/2 + 80)
        sarah.name = "sarah"
        addChild(sarah)
        
        let gustavo = SKSpriteNode(imageNamed: "underGus")
        gustavo.position = CGPoint(x: size.width/2 - 750, y: size.height/2 - 290)
        gustavo.name = "underGus"
        addChild(gustavo)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo13(size:self.size)
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
    
}
