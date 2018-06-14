//
//  NSMutableAttributeString+X.swift
//  AttributeX
//
//  Created by Jian Liu on 2018/6/7.
//  Copyright © 2018年 com.github.AttributeX. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {
    
    public subscript(range: CountableClosedRange<Int>) -> AttributeX {
        return AttributeX(mutableAttributedString: self, range: NSRange(location: range.lowerBound, length: range.count - 1))
    }
    
    public var fullRange: AttributeX {
        return AttributeX(mutableAttributedString: self, range: NSMakeRange(0, length))
    }
    
}
