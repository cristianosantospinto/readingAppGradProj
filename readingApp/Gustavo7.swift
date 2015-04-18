//
//  Gustavo7.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo7: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "7Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        var park = SKSpriteNode(imageNamed: "park")
        park.position = CGPoint(x: size.width/2 - 105, y: size.height/2 - 120)
        park.name = "park"
        addChild(park)
        
        var bridge = SKSpriteNode(imageNamed: "bridge")
        bridge.position = CGPoint(x: size.width/2 + 300, y: size.height/2 + 50)
        bridge.name = "bridge"
        addChild(bridge)

        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo3(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
    }
    

override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    var touch = touches.first as? UITouch
    var location = touch!.locationInNode(self)
    var node = self.nodeAtPoint(location)
    
    if (node.name == "park") {
        var mainMenu = Gustavo8(size: self.size)
        var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        mainMenu.scaleMode = SKSceneScaleMode.AspectFill
        self.scene!.view?.presentScene(mainMenu, transition: transition)
        
    }   else if (node.name == "bridge") {
        var mainMenu = Gustavo10(size: self.size)
        var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        mainMenu.scaleMode = SKSceneScaleMode.AspectFill
        self.scene!.view?.presentScene(mainMenu, transition: transition)
        
    }
    
    
}

    override func update(currentTime: CFTimeInterval) {
        
    }
    
}

