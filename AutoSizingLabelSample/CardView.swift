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
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    
    static func instantiate(_ row: Int) -> CardView {
        let nib = UINib(nibName: "CardView", bundle: nil)
        let view = nib.instantiate(withOwner: nil, options: nil)[0] as! CardView
        view.setViewContent(row: row)
        return view
    }
    
    private func setViewContent(row: Int) {
        switch row {
        case 0:
            self.cardView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
            self.titleLabel.text = "赤"
            self.contentLabel.text = "赤（あか、紅、朱、丹）は色のひとつで、熟したイチゴや血液のような色の総称。JIS規格では基本色名の一つ。国際照明委員会 (CIE) は700 nm の波長をRGB表色系においてR（赤）と規定している。赤より波長の長い光を赤外線と呼ぶが、様々な表色系など"
            break
        case 1:
            self.cardView.backgroundColor = UIColor.blue.withAlphaComponent(0.2)
            self.titleLabel.text = "青"
            self.contentLabel.text = "青（あお、靑、蒼、碧）は基本色名のひとつで、晴れた日の海や瑠璃のような色の総称である。青は英語のblue、外来語のブルーに相当する。寒色のひとつ。また、光の三原色のひとつも青と呼ばれる。青色（セイショク、あおいろ）は同義語。 国際照明委員会 (CIE)"
            break
        case 2:
            self.cardView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
            self.titleLabel.text = "黄色"
            self.contentLabel.text = "黄色（黃色、きいろ、オウショク）は、基本色名の一つであり、色の三原色の一つである。ヒマワリの花弁のような色。英語では yellow であり、外来語のイエローはこれに由来する。暖色の一つ。波長 570〜585 nm の単色光は黄色であり、長波長側は橙色に、短"
            break
        default:
            break
        }
    }
}
