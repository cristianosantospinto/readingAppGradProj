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
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey7I(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "spaghetti") {
            var mainMenu = Monkey9Is(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }   else if (node.name == "pizza") {
            var mainMenu = Monkey9Ip(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}

