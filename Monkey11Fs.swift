//
//  Monkey11Fs.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey11Fs: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("12mattStrawberry.wav")
        
        let background = SKSpriteNode(imageNamed: "14.2Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let matt = SKSpriteNode(imageNamed: "mattFace")
        matt.position = CGPoint(x: size.width/2 - 350, y: size.height/2 + 302)
        matt.name = "mattFace"
        addChild(matt)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey12F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey8F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "mattFace") {
            sfx("train.wav")
            
            
        }   else if (node.name == "") {
            sfx("")
            
            
        }
        
        
    }
    
    
}

