//
//  PongViewController.swift
//  ComputerLoving
//
//  Created by smorris on 9/15/15.
//  Copyright (c) 2015 LateNightGames. All rights reserved.
//

import UIKit

class PongViewController: UIViewController {
    
    var playerPaddle : UIView = UIView()
    var enemyPaddle : UIView = UIView()
    var ball : UIView = UIView()
    var dynamicAnimator = UIDynamicAnimator()
    var ballBehavior = UIDynamicItemBehavior()

    override func viewDidLoad() {
        
        playerPaddle = UIView(frame: CGRectMake(500, view.center.y, 30, 90))
        playerPaddle.backgroundColor = UIColor.blueColor()
        playerPaddle.layer.cornerRadius = 5
        playerPaddle.layer.masksToBounds = true
        view.addSubview(playerPaddle)
        
        enemyPaddle = UIView(frame: CGRectMake(150, view.center.y, 30, 90))
        enemyPaddle.backgroundColor = UIColor.redColor()
        enemyPaddle.layer.cornerRadius = 5
        enemyPaddle.layer.masksToBounds = true
        view.addSubview(enemyPaddle)
        
        ball = UIView(frame: CGRectMake(view.center.x-10, 500, 20, 20))
        ball.backgroundColor = UIColor.greenColor()
        ball.layer.cornerRadius = 10
        ball.layer.masksToBounds = true
        view.addSubview(ball)
        
        ballBehavior = UIDynamicItemBehavior(items: [ball])
        ballBehavior.elasticity = 1.0
        ballBehavior.allowsRotation = false
        ballBehavior.friction = 0.0
        ballBehavior.resistance = 0.0
        dynamicAnimator.addBehavior(ballBehavior)
        
        super.viewDidLoad()
    }
    
    
    
}
