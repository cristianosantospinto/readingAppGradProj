//
//  Monkey2.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 17/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey2: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        
       playBackgroundMusic("1matt.mp3")
        
        let background = SKSpriteNode(imageNamed: "2Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        var france = SKSpriteNode(imageNamed: "eiffel")
        france.position = CGPoint(x: size.width/2 + 300, y: size.height/2 + 350)
        france.name = "eiffel"
        addChild(france)
        
        var italy = SKSpriteNode(imageNamed: "colloseum")
        italy.position = CGPoint(x: size.width/2 + 830, y: size.height/2 - 200)
        italy.name = "colloseum"
        addChild(italy)
        
        let rotateR = SKAction.rotateByAngle(0.05, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.05, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        italy.runAction(wiggle)
        france.runAction(wiggle)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
    }
    
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey1(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        println("swiped left")
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "eiffel") {
            var mainMenu = Monkey3F(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }   else if (node.name == "colloseum") {
            var mainMenu = Monkey3I(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}
