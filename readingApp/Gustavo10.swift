//
//  Gustavo10.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo10: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("7gustavo.wav")
        
        let background = SKSpriteNode(imageNamed: "10Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let boat1 = SKSpriteNode(imageNamed: "boat1")
        boat1.position = CGPoint(x: size.width/2 - 100, y: size.height/2 + 300)
        boat1.name = "boat1"
        addChild(boat1)
        
        let boat2 = SKSpriteNode(imageNamed: "boat2")
        boat2.position = CGPoint(x: size.width/2 + 200, y: size.height/2 - 150)
        boat2.name = "boat2"
        addChild(boat2)
        
        let rotateR = SKAction.rotateByAngle(0.03, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.03, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        boat1.runAction(wiggle)
        boat2.runAction(wiggle)
        
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
        
        if (node.name == "boat1") {
            sfx("boat.wav")
            var mainMenu = Gustavo11(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 2.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
            
        }   else if (node.name == "boat2") {
            sfx("boat.wav")
            var mainMenu = Gustavo11(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 2.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
        }
        
    }

}