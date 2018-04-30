//
//  GameScene.swift
//  pong 124526789
//
//  Created by Benjamin on 4/24/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import SpriteKit
import GameplayKit

let ballCategory:UInt32 = 0x1 << 0
let paddleCategory:UInt32 = 0x2 << 1
let leftCategory:UInt32 = 0x2 << 2
let rightCategory:UInt32 = 0x3 << 3
let bottomCategory:UInt32 = 0x4 << 4
let topCategory:UInt32 = 0x5 << 5



class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var topPaddle = SKSpriteNode()
    var bottomPaddle = SKSpriteNode()
    var rightPaddle = SKSpriteNode()
    var leftPaddle = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        
        physicsWorld.contactDelegate = self
        
        topPaddle = self.childNode(withName: "topPaddle") as! SKSpriteNode
        bottomPaddle = self.childNode(withName: "bottomPaddle") as! SKSpriteNode
        rightPaddle = self.childNode(withName: "rightPaddle") as! SKSpriteNode
        leftPaddle = self.childNode(withName: "leftPaddle") as! SKSpriteNode
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
    self.physicsBody = border
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
     print(contact.bodyA.node?.name)
}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        
        topPaddle.run(SKAction.moveTo(x: location.x, duration: 0.2))
        bottomPaddle.run(SKAction.moveTo(x: -location.x, duration: 0.2))
        leftPaddle.run(SKAction.moveTo(x: location.x, duration: 0.2))
        rightPaddle.run(SKAction.moveTo(x: -location.x, duration: 0.2))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        
              topPaddle.run(SKAction.moveTo(x: location.x, duration: 0.2))
              bottomPaddle.run(SKAction.moveTo(x: -location.x, duration: 0.2))
              leftPaddle.run(SKAction.moveTo(x: location.x, duration: 0.2))
              rightPaddle.run(SKAction.moveTo(x: -location.x, duration: 0.2))
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
