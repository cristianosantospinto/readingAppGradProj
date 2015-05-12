//
//  Monkey13F.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey13F: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("3DV.mp3")
        let background = SKSpriteNode(imageNamed: "16Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        
        var MonkeyHome = SKSpriteNode(imageNamed: "MonkeyHome")
        MonkeyHome.position = CGPoint(x: size.width/2 + 230, y: size.height/2 - 300)
        MonkeyHome.name = "MonkeyHome"
        addChild(MonkeyHome)
        
        var MonkeyRetry = SKSpriteNode(imageNamed: "MonkeyRetry")
        MonkeyRetry.position = CGPoint(x: size.width/2 - 300, y: size.height/2 - 300)
        MonkeyRetry.name = "MonkeyRetry"
        addChild(MonkeyRetry)
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let rotateR = SKAction.rotateByAngle(0.1, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.1, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        MonkeyHome.runAction(wiggle)
        MonkeyRetry.runAction(wiggle)
        
        
    }
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey12F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
        backgroundMusicPlayer.stop()
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        println("swiped left")
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "MonkeyHome") {
            var mainMenu = GameScene(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            backgroundMusicPlayer.stop()
            
        }   else if (node.name == "MonkeyRetry") {
            var mainMenu = Monkey1(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            backgroundMusicPlayer.stop()
            
        }
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}