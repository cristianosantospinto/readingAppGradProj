//
//  Monkey10F.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//
import SpriteKit

class Monkey10F: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("11mattSauce.wav")
        
        let background = SKSpriteNode(imageNamed: "13Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        var strawberry = SKSpriteNode(imageNamed: "strawberry")
        strawberry.position = CGPoint(x: size.width/2 - 230, y: size.height/2 + 300)
        strawberry.name = "strawberry"
        addChild(strawberry)
        
        var chocolate = SKSpriteNode(imageNamed: "chocolate")
        chocolate.position = CGPoint(x: size.width/2 + 300, y: size.height/2 + 300)
        chocolate.name = "chocolate"
        addChild(chocolate)
        
        let rotateR = SKAction.rotateByAngle(0.05, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.05, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        strawberry.runAction(wiggle)
        chocolate.runAction(wiggle)
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
}
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey8F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        println("swiped left")
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "strawberry") {
            var mainMenu = Monkey11Fs(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }   else if (node.name == "chocolate") {
            var mainMenu = Monkey11Fc(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}
