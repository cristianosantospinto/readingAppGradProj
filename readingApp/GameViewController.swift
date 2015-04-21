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
        skView.showsFPS = false
        skView.showsNodeCount = false                //shows fps on scree - toggle true/false to display
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .AspectFill  //aspect fill for universal size screen
        skView.presentScene(scene)
        
        let textField = UITextField(frame: CGRectMake(20, 30, 100, 30))
        textField.borderStyle = .RoundedRect
        textField.backgroundColor = UIColor.blueColor()
        textField.textColor = UIColor.whiteColor()
        textField.textAlignment = NSTextAlignment.Center
        textField.text = "Name"
        textField.returnKeyType = UIReturnKeyType.Done
        textField.font = UIFont(name: "Lato", size: 20)
        
        
        self.view!.addSubview(textField)
     
        
        
        //Creates a reference to the user defaults. Need this if you want to read OR write to user defaults.
        let defaults = NSUserDefaults.standardUserDefaults()
        
        //Set a value for a key
        defaults.setObject("Kyle", forKey: "userNameKey")
        
        //Test to see if a key exists
        if let name = defaults.stringForKey("userNameKey") {
            println(name)
        }
        

        
       

        
        
    }
}