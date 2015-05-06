//
//  Monkey5F.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey5F: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("4matt.wav")
        
        let background = SKSpriteNode(imageNamed: "6Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let church = SKSpriteNode(imageNamed: "church")
        church.position = CGPoint(x: size.width/2 - 260, y: size.height/2 + 280)
        church.name = "church"
        addChild(church)
        
        let circus = SKSpriteNode(imageNamed: "circus")
        circus.position = CGPoint(x: size.width/2 + 140, y: size.height/2 - 220)
        circus.name = "circus"
        addChild(circus)
        
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey6F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey4F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "church") {
            sfx("churchBells.wav")
            
            
        }   else if (node.name == "circus") {
            sfx("circus.wav")
            
            
        }

    
    }
    
}



