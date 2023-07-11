//
//  CAGradientLayer+ListStyle.swift
//  Today
//
//  Created by 高嶋芙佳 on 2023/07/11.
//

import UIKit

extension CAGradientLayer{
    static func gradientLayer(for style:ReminderListStyle, in frame:CGRect)->Self{
        let layer = Self()
        layer.colors = colors(for: style)
        layer.frame = frame
        return layer
    }
    private static func colors(for style: ReminderListStyle)->[CGColor]{
        let beginColor:UIColor
        let endColor:UIColor
        
        switch style{
        case .all:
            beginColor = .todayGradientAllBegin
            endColor = .todayGradientAllEnd
        case .future:
            beginColor = .todayGradientTodayBegin
            endColor = .todayGradientFutureEnd
        case .today:
            beginColor = .todayGradientTodayBegin
            endColor = .todayGradientTodayEnd
        }
        return [beginColor.cgColor,endColor.cgColor]
    }
}
