//
//  Monkey8I.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey8I: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("9mattItalyFood.mp3")
        
        let background = SKSpriteNode(imageNamed: "10Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        var spaghetti = SKSpriteNode(imageNamed: "spaghetti")
        spaghetti.position = CGPoint(x: size.width/2 + 300, y: size.height/2 + 220)
        spaghetti.name = "spaghetti"
        addChild(spaghetti)
        
        var pizza = SKSpriteNode(imageNamed: "pizza")
        pizza.position = CGPoint(x: size.width/2 + 300, y: size.height/2 + 60)
        pizza.name = "pizza"
        addChild(pizza)
        
        let rotateR = SKAction.rotateByAngle(0.06, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.06, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        spaghetti.runAction(wiggle)
        pizza.runAction(wiggle)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey7I(size:self.size)
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
        
        if (node.name == "spaghetti") {
            var mainMenu = Monkey9Is(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }   else if (node.name == "pizza") {
            var mainMenu = Monkey9Ip(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}


