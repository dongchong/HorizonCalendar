//
//  CustomLineLabel.swift
//  vmsapp-ios
//
//  Created by cdms on 2021/11/25.
//

import UIKit

class CustomLineLabel: UILabel {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        // 正常绘制文本内容
        super.draw(rect)
        let context = UIGraphicsGetCurrentContext()
        // 设置下划线宽度和颜色
        context?.setLineWidth(1)
        context?.setStrokeColor(UIColor.black.cgColor)
        // 第一条下划线的位置：顶部留白 + 字体高度 + 10（下划线和文字距离）
        let pointY:CGFloat = 14
        // 画线
        context?.move(to: CGPoint(x: 0, y: pointY))
        context?.addLine(to: CGPoint(x: rect.width, y: pointY))
        context?.strokePath()
    }
    
}
