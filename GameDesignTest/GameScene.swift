//
//  GameScene.swift
//  GameDesignTest
//
//  Copyright © 2019 Mitali Ahir. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
    {
    
    //private var label : SKLabelNode?
   // private var spinnyNode : SKShapeNode?
    //var nextLevelButton:SKLabelNode!
    
    private var leg : SKSpriteNode!
    private var hair1 : SKSpriteNode!
    private var hair2 : SKSpriteNode!
    private var hair3 : SKSpriteNode!
    
    
    override func didMove(to view: SKView) {
        
        //Leg
        leg = SKSpriteNode(imageNamed: "leg.png")
        leg.position = CGPoint(x: 210, y: 450)
        addChild(leg)
        
        //Hair
        hair1 = SKSpriteNode(imageNamed: "hair.png")
        hair1.position = CGPoint(x: 150, y: 120)
        hair1.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(hair1)
        
        hair2 = SKSpriteNode(imageNamed: "hair.png")
        hair2.position = CGPoint(x: 180, y: 350)
        hair2.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(hair2)
        
        hair3 = SKSpriteNode(imageNamed: "hair.png")
        hair3.position = CGPoint(x: 260, y: 300)
        hair3.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(hair3)
        
        let yourline = SKShapeNode()
        let pathToDraw = CGMutablePath()
        pathToDraw.addLines(between: [CGPoint(x: 180, y: 140),CGPoint(x: 220.0, y: 370.0) ])
        //pathToDraw.move(to: CGPoint(x: 180.0, y: 350.0))
        pathToDraw.addLine(to: CGPoint(x: 340.0, y: 360.0))
        yourline.path = pathToDraw
        yourline.strokeColor = SKColor.red
        addChild(yourline)
        
        
                }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let touch = touches.first
                if (touch == nil)
                {
                        return
                }
        
           //let location = touch!.location(in:self)
       // let node = self.atPoint(location)
        
       
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
