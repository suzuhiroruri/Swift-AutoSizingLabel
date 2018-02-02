//
//  CardView.swift
//  AutoSizingLabelSample
//
//  Created by Shota Kashihara on 2017/07/28.
//  Copyright © 2017年 Shota Kashihara. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    
    static func instantiate() -> CardView {
        let nib = UINib(nibName: "CardView", bundle: nil)
        let view = nib.instantiate(withOwner: nil, options: nil)[0] as! CardView
        view.setViewContent()
        view.sizeFitting()
        return view
    }
    
    private func sizeFitting() {
        // 重要：xibと実機のwidthが違うと、systemLayoutSizeFittingが正しく計測されないため事前にwidthを合わせる。
        self.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: self.frame.height)
        
        self.setNeedsLayout()
        self.layoutIfNeeded()
        let size = self.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        self.frame = CGRect.init(x: 0, y: 0, width: size.width, height: size.height)
    }
    
    private func setViewContent() {
        self.cardView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
        self.contentLabel.text = "赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など"
    }
}
