//
//  CardView.swift
//  AutoSizingLabelSample
//
//  Created by Shota Kashihara on 2017/07/28.
//  Copyright © 2017年 Shota Kashihara. All rights reserved.
//

import UIKit

class BAScoutDetailMailView2: UIView {
    var tabButtonPressedBlock: ((_ index: Int) -> Void)?
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    // 選択されているtabボタンのindex
    var currentIndex: Int = 0
    static func instantiate() -> BAScoutDetailMailView2 {
        let nib = UINib(nibName: "BAScoutDetailMailView2", bundle: nil)
        guard let view = nib.instantiate(withOwner: nil, options: nil)[0] as? BAScoutDetailMailView2 else {
            return BAScoutDetailMailView2()
        }
        view.setViewContent()
        view.sizeFitting()
        return view
    }
    
    
    private func setViewContent() {
        self.contentLabel.text = "赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など赤（あか、紅、朱、丹赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など赤（あか、紅、朱、丹"
        contentLabel.sizeToFit()
        segmentedControl.layer.cornerRadius = 0
        segmentedControl.layer.masksToBounds = false
    }
    
    private func sizeFitting() {
        // 重要：xibと実機のwidthが違うと、systemLayoutSizeFittingが正しく計測されないため事前にwidthを合わせる。
        self.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: self.frame.height)
        self.setNeedsLayout()
        self.layoutIfNeeded()
        let size = self.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        self.frame = CGRect.init(x: 0, y: 0, width: size.width, height: size.height)
    }
    
    /**
     tabボタンのindex番号を更新
     - parameter index: 更新しようとしているindex番号
     - parameter animated: アニメーションするかのBOOL
     */
    func updateCurrentIndex(index: Int, animated: Bool) {
        segmentedControl.selectedSegmentIndex = index
        currentIndex = index
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        tabButtonPressedBlock?(sender.selectedSegmentIndex)
        updateCurrentIndex(index: sender.selectedSegmentIndex, animated: true)
    }
}
