//
//  ViewController.swift
//  AutoSizingLabelSample
//
//  Created by Shota Kashihara on 2017/07/28.
//  Copyright © 2017年 Shota Kashihara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scrollView = UIScrollView.init(frame: self.view.frame, subviews: [
            UIView.statusBar(),
            CardView.instantiate(0),
            CardView.instantiate(1),
            CardView.instantiate(2)
            ])
        self.view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension UIView {
    
    public class func statusBar() -> UIView {
        return UIView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIApplication.shared.statusBarFrame.height))
    }
}

extension UIScrollView {
    
    public convenience init(frame: CGRect, subviews: [UIView]) {
        self.init(frame: frame)
        self.contentSize = CGSize.init(width: frame.width, height: subviews.map { $0.frame.height }.reduce(0, +))
        var heightSummary: CGFloat = 0.0
        for subview in subviews {
            subview.frame = CGRect.init(x: 0.0, y: heightSummary, width: frame.width, height: subview.frame.height)
            heightSummary += subview.frame.height
            self.addSubview(subview)
        }
    }
}
