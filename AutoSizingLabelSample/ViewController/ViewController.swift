//
//  ViewController.swift
//  AutoSizingLabelSample
//
//  Created by Shota Kashihara on 2017/07/28.
//  Copyright © 2017年 Shota Kashihara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var scrollView:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setScrollView()
    }
    
    func setScrollView(){
        let mailView:BAScoutDetailMailView = BAScoutDetailMailView.instantiate()
        scrollView = UIScrollView.init(frame: CGRect(x:0,y:0,width:self.view.frame.width,height:mailView.frame.height), subview:mailView)
        scrollView.alwaysBounceVertical = true
        scrollView.delegate = self
        
        self.view.addSubview(scrollView)
    }
}

extension UIScrollView {
    
    // scrollViewのサイズを決定
    public convenience init(frame: CGRect, subview: UIView) {
        self.init(frame: frame)
        self.contentSize = CGSize.init(width: frame.width, height: subview.frame.height)
        subview.frame = CGRect.init(x: 0.0, y: 0.0, width: frame.width, height: subview.frame.height)
        self.addSubview(subview)
    }
}
