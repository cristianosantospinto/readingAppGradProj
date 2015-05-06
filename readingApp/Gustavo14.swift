//
//  Gustavo14.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo14: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("3DV.wav")
        let background = SKSpriteNode(imageNamed: "14Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)

    
        var GustavoHome = SKSpriteNode(imageNamed: "GustavoHome")
        GustavoHome.position = CGPoint(x: size.width/2 + 230, y: size.height/2 - 300)
        GustavoHome.name = "GustavoHome"
        addChild(GustavoHome)
        
        var GustavoRetry = SKSpriteNode(imageNamed: "GustavoRetry")
        GustavoRetry.position = CGPoint(x: size.width/2 - 300, y: size.height/2 - 300)
        GustavoRetry.name = "GustavoRetry"
        addChild(GustavoRetry)
        
        let rotateR = SKAction.rotateByAngle(0.1, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.1, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        GustavoHome.runAction(wiggle)
        GustavoRetry.runAction(wiggle)
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo13(size:self.size)
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
        
        if (node.name == "GustavoHome") {
            var mainMenu = GameScene(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            playBackgroundMusic("2DV.wav")
            
        }   else if (node.name == "GustavoRetry") {
            var mainMenu = Gustavo1(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            backgroundMusicPlayer.stop()
        }
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}