//
//  scene3.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//


import SpriteKit

class Gustavo1: SKScene {
    
    var currentTime = 0.0
    var startTime = 0.0
    var elapsedTime = 0.0
    //var username = String?()

    
    override func didMoveToView(view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "1Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        /*let myLabel = SKLabelNode(fontNamed: "Arial")
        let myLabel1 = SKLabelNode(fontNamed: "Arial")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if let name = defaults.stringForKey("userNameKey") {
            username = name
            myLabel1.text = "Hey"
            myLabel.text = username!
            myLabel.fontSize = 50
            myLabel1.fontSize = 50
            myLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
            myLabel1.position = CGPoint(x: size.width/2 - 150, y: size.height/2)
            self.addChild(myLabel)
            self.addChild(myLabel1)
            
            println(username!)
            
         
            
        }*/
    
    
    }


func sceneFade() {
    let scene = Gustavo2(size:self.size)
    scene.scaleMode = scaleMode
    let reveal = SKTransition.fadeWithDuration(3.0)
    self.view?.presentScene(scene, transition: reveal)
    
    startTime = currentTime
}

//override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {



override func update(currentTime: CFTimeInterval) {
    self.currentTime = currentTime
    elapsedTime = currentTime - startTime
    
    
    if elapsedTime >= 3.0 {
        let pause = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC * 2))   //delay before fading
        dispatch_after(pause, dispatch_get_main_queue()){
            
            self.sceneFade()
        }
        
    }
    
    
}


}
