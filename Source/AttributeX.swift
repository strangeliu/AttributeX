//
//  AttributeX.swift
//  AttributeX
//
//  Created by Jian Liu on 2018/6/7.
//  Copyright © 2018年 com.github.AttributeX. All rights reserved.
//

import Foundation

// Case subscript can only return get-only value, AttributeX can not be a value-type such as struct.
public class AttributeX {
    
    let mutableAttributedString: NSMutableAttributedString
    let range: NSRange
    
    public init(mutableAttributedString: NSMutableAttributedString, range: NSRange) {
        self.mutableAttributedString = mutableAttributedString
        self.range = range
    }
}

extension AttributeX {
    
    func getValue<ExpectType>(for key: NSAttributedString.Key) -> ExpectType? {
        // TODO: get value for special key and range
        return nil
    }
    
    public func setValue(_ value: Any?, for key: NSAttributedString.Key) {
        if let value = value {
            mutableAttributedString.addAttribute(key, value: value, range: range)
        } else {
            mutableAttributedString.removeAttribute(key, range: range)
        }
    }
}

extension AttributeX {
    
    /// UIFont, default Helvetica(Neue) 12
    @available(iOS 6.0, *)
    public var font: UIFont? {
        get {
            return getValue(for: .font)
        }
        set {
            setValue(newValue, for: .font)
        }
    }
    
    /// NSParagraphStyle, default defaultParagraphStyle
    @available(iOS 6.0, *)
    public var paragraphStyle: NSParagraphStyle? {
        get {
            return getValue(for: .paragraphStyle)
        }
        set {
            setValue(newValue, for: .paragraphStyle)
        }
    }
    
    /// UIColor, default blackColor
    @available(iOS 6.0, *)
    public var foregroundColor: UIColor? {
        get {
            return getValue(for: .foregroundColor)
        }
        set {
            setValue(newValue, for: .foregroundColor)
        }
    }
    
    /// UIColor, default nil: no background
    @available(iOS 6.0, *)
    public var backgroundColor: UIColor? {
        get {
            return getValue(for: .backgroundColor)
        }
        set {
            setValue(newValue, for: .backgroundColor)
        }
    }
    
    /// default 1: default ligatures, 0: no ligatures
    @available(iOS 6.0, *)
    public var ligature: Int? {
        get {
            return getValue(for: .ligature)
        }
        set {
            setValue(newValue, for: .ligature)
        }
    }
    
    /// in points; amount to modify default kerning. 0 means kerning is disabled.
    @available(iOS 6.0, *)
    public var kern: Float? {
        get {
            return getValue(for: .kern)
        }
        set {
            setValue(newValue, for: .kern)
        }
    }
    
    /// default 0: no strikethrough
    @available(iOS 6.0, *)
    public var strikethroughStyle: NSUnderlineStyle? {
        get {
            return getValue(for: .underlineStyle)
        }
        set {
            setValue(newValue?.rawValue, for: .strikethroughStyle)
        }
    }
    
    /// default 0: no underline
    @available(iOS 6.0, *)
    public var underlineStyle: NSUnderlineStyle? {
        get {
            return getValue(for: .underlineStyle)
        }
        set {
            setValue(newValue?.rawValue, for: .underlineStyle)
        }
    }
    
    /// default nil: same as foreground color
    @available(iOS 6.0, *)
    public var strokeColor: UIColor? {
        get {
            return getValue(for: .strokeColor)
        }
        set {
            setValue(newValue, for: .strokeColor)
        }
    }
    
    /// in percent of font point size, default 0: no stroke; positive for stroke alone, negative for stroke and fill (a typical value for outlined text would be 3.0)
    @available(iOS 6.0, *)
    public var strokeWidth: Float? {
        get {
            return getValue(for: .strokeWidth)
        }
        set {
            setValue(newValue, for: .strokeWidth)
        }
    }
    
    /// default nil: no shadow
    @available(iOS 6.0, *)
    public var shadow: NSShadow? {
        get {
            return getValue(for: .shadow)
        }
        set {
            setValue(newValue, for: .shadow)
        }
    }
    
    /// default nil: no text effect
    @available(iOS 7.0, *)
    public var textEffect: NSAttributedString.TextEffectStyle? {
        get {
            return getValue(for: .textEffect)
        }
        set {
            setValue(newValue?.rawValue, for: .textEffect)
        }
    }
    
    /// default nil
    @available(iOS 7.0, *)
    public var attachment: NSTextAttachment? {
        get {
            return getValue(for: .attachment)
        }
        set {
            setValue(newValue, for: .attachment)
        }
    }
    
    /// NSURL (preferred) or NSString
    @available(iOS 7.0, *)
    public var link: NSURL? {
        get {
            return getValue(for: .link)
        }
        set {
            setValue(newValue, for: .link)
        }
    }
    
    /// NSNumber containing floating point value, in points; offset from baseline, default 0
    @available(iOS 7.0, *)
    public var baselineOffset: Float? {
        get {
            return getValue(for: .baselineOffset)
        }
        set {
            setValue(newValue, for: .baselineOffset)
        }
    }
    
    /// UIColor, default nil: same as foreground color
    @available(iOS 7.0, *)
    public var underlineColor: UIColor? {
        get {
            return getValue(for: .underlineColor)
        }
        set {
            setValue(newValue, for: .underlineColor)
        }
    }
    
    /// UIColor, default nil: same as foreground color
    @available(iOS 7.0, *)
    public var strikethroughColor: UIColor? {
        get {
            return getValue(for: .underlineColor)
        }
        set {
            setValue(newValue, for: .underlineColor)
        }
    }
    
    /// NSNumber containing floating point value; skew to be applied to glyphs, default 0: no skew
    @available(iOS 7.0, *)
    public var obliqueness: Float? {
        get {
            return getValue(for: .underlineColor)
        }
        set {
            setValue(newValue, for: .underlineColor)
        }
    }
    
    /// NSNumber containing floating point value; log of expansion factor to be applied to glyphs, default 0: no expansion
    @available(iOS 7.0, *)
    public var expansion: Float? {
        get {
            return getValue(for: .expansion)
        }
        set {
            setValue(newValue, for: .expansion)
        }
    }
    
    /// NSArray of NSNumbers representing the nested levels of writing direction overrides as defined by Unicode LRE, RLE, LRO, and RLO characters.  The control characters can be obtained by masking NSWritingDirection and NSWritingDirectionFormatType values.  LRE: NSWritingDirectionLeftToRight|NSWritingDirectionEmbedding, RLE: NSWritingDirectionRightToLeft|NSWritingDirectionEmbedding, LRO: NSWritingDirectionLeftToRight|NSWritingDirectionOverride, RLO: NSWritingDirectionRightToLeft|NSWritingDirectionOverride,
    @available(iOS 7.0, *)
    public var writingDirection: [Int]? {
        get {
            return getValue(for: .writingDirection)
        }
        set {
            setValue(newValue, for: .writingDirection)
        }
    }
    
    /// 0 means horizontal text.  1 indicates vertical text.  If not specified, it could follow higher-level vertical orientation settings.  Currently on iOS, it's always horizontal.  The behavior for any other value is undefined.
    @available(iOS 6.0, *)
    public var verticalGlyphForm: Int? {
        get {
            return getValue(for: .verticalGlyphForm)
        }
        set {
            setValue(newValue, for: .verticalGlyphForm)
        }
    }
    
}


