//
//  BeachScene1.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 08/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class BeachScene1: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "scene1")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        var button = SKSpriteNode(imageNamed: "nextPageButton")
        button.position = CGPoint(x: size.width/2 + 800, y: size.height/2 - 400)
        button.name = "nextButton"
        
        addChild(background)
        addChild(button)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var touch: UITouch = touches.anyObject() as UITouch
        var location = touch.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        // If next button is touched, start transition to second scene
        if (node.name == "nextButton") {
            var secondScene = BeachScene2(size: self.size)
            var transition = SKTransition.flipVerticalWithDuration(1.0)
            secondScene.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(secondScene, transition: transition)
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
}



