//
//  ViewController.swift
//  AutoSizingLabelSample
//
//  Created by Shota Kashihara on 2017/07/28.
//  Copyright © 2017年 Shota Kashihara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let cardView = CardView.instantiate()
        let scrollView = UIScrollView.init(frame: CGRect(x:0,y:0,width:self.view.frame.width,height:cardView.frame.height), subview:cardView)
        scrollView.alwaysBounceVertical = true
        scrollView.delegate = self
        self.view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension UIScrollView {
    
    public convenience init(frame: CGRect, subview: UIView) {
        self.init(frame: frame)
        self.contentSize = CGSize.init(width: frame.width, height: subview.frame.height)
        subview.frame = CGRect.init(x: 0.0, y: 0.0, width: frame.width, height: subview.frame.height)
        self.addSubview(subview)
    }
}
