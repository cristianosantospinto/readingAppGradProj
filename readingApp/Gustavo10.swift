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
        
        
    }
    
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo7(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func sceneTapped() {
        let myScene = Gustavo11(size:self.size)
        myScene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(myScene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        sceneTapped()
    }
    
}

