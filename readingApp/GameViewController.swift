//
//  GameViewController.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 07/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let scene = SplashScreen(size: CGSize(width: 2048, height: 1536))  //calls class mainMenu //size for universal
        let skView = self.view as! SKView
       // skView.showsFPS = false
        skView.showsNodeCount = false                //shows fps on scree - toggle true/false to display
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .AspectFill  //aspect fill for universal size screen
        skView.presentScene(scene)
        

        
        
    }
}