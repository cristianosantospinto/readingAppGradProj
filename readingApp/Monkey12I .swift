//
//  Monkey12I .swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey12I: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("13MattBed.wav")
        
        let background = SKSpriteNode(imageNamed: "15Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let yawn = SKSpriteNode(imageNamed: "yawn")
        yawn.position = CGPoint(x: size.width/2 - 270, y: size.height/2 + 180)
        yawn.name = "yawn"
        addChild(yawn)
        
        let alarm = SKSpriteNode(imageNamed: "alarm")
        alarm.position = CGPoint(x: size.width/2 - 790, y: size.height/2 + 40)
        alarm.name = "alarm"
        addChild(alarm)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey13I(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey8I(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "yawn") {
            sfx("train.wav")
            
            
        }   else if (node.name == "alarm") {
            sfx("")
            
            
        }
        
        
    }
    
    
}

