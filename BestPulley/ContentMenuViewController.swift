//
//  ContentMenuViewController.swift
//  BestPulley
//
//  Created by developersancho on 25.05.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

class ContentMenuViewController: PullUpController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet var visualEffectView: UIVisualEffectView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //firstView.attach(to: self)
    
        self.willMoveToStickyPoint = { point in
            print("willMoveToStickyPoint \(point)")
        }
        
        self.didMoveToStickyPoint = { point in
            print("didMoveToStickyPoint \(point)")
        }
        
    }
    @IBAction func openNearBy(_ sender: Any) {
        if let lastStickyPoint = pullUpControllerAllStickyPoints.last {
            pullUpControllerMoveToVisiblePoint(lastStickyPoint, completion: nil)
        }
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.layer.cornerRadius = 12
    }
    
    override var pullUpControllerPreferredSize: CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: firstView.frame.maxY)
    }
    
    override var pullUpControllerPreviewOffset: CGFloat {
        return (headerView.frame.height)
    }
    
    override var pullUpControllerMiddleStickyPoints: [CGFloat] {
        return [firstView.frame.maxY]
    }
    
    override var pullUpControllerIsBouncingEnabled: Bool {
        return false
    }
    
    override var pullUpControllerPreferredLandscapeFrame: CGRect {
        return CGRect(x: 5, y: 5, width: 280, height: UIScreen.main.bounds.height - 10)
    }


}
