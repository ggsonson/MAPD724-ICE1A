//
//  GameScene.swift
//  MAPD724-ICE-1A
//
//  Created by Man Nok Pun on 2023-01-16.
//
import UIKit
import AVFoundation
import SpriteKit
import GameplayKit


class GameScene: SKScene {
    override func sceneDidLoad() {
        print("Loaded GameScene")
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        print("Touch down")
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        print("Touch moved")
    }
    
    func touchUp(atPoint pos : CGPoint) {
        print("Touch up")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    }
}
