//
//  help.swift
//  DecisioVenture
//
//  Created by Cristiano Santos-Pinto on 08/05/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class help: SKScene {
    
    let background1 = SKSpriteNode(imageNamed: "scrollingBg3")
    let background2 = SKSpriteNode(imageNamed: "scrollingBg4")
    
    override func didMoveToView(view: SKView) {
        
        background1.anchorPoint = CGPointZero
        background1.position = CGPoint(x: 0,y: 0)
        self.addChild(background1)
        
        background2.anchorPoint = CGPointZero
        background2.position = CGPoint(x: background1.size.width, y: 0)
        self.addChild(background2)
        
        let helpMenu = SKSpriteNode(imageNamed: "help")
        helpMenu.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(helpMenu)
        
        let Button = SKSpriteNode(imageNamed: "exit")
        Button.position = CGPoint(x: size.width/2 + 700, y: size.height/2 + 400)
        Button.name = "exit"
        addChild(Button)
        

        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        println("swiped right")
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        println("swiped left")
    }

    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "exit") {
            var MainMenu = GameScene(size: self.size)
            var transition = SKTransition.fadeWithDuration(0.5)
            MainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(MainMenu, transition: transition)
            
        }
        
        
    }

override func update(currentTime: CFTimeInterval) {
    
    background1.position = CGPoint(x: background1.position.x - 2, y: background1.position.y)
    background2.position = CGPoint(x: background2.position.x - 2 , y: background2.position.y)
    
    if(background1.position.x < -background1.size.width)
    {
        background1.position = CGPoint(x: background2.position.x + background2.size.width, y: background1.position.y)
    }
    
    if(background2.position.x < -background2.size.width)
    {
        background2.position = CGPoint(x: background1.position.x + background1.size.width, y: background2.position.y)
        
    }
    
}

}
