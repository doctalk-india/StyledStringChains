//
//  NSMutableString+extensions.swift
//  StyledStringChains
//
//  Created by Sourav Chandra on 17/03/19.
//  Copyright © 2019 Pulse Care. All rights reserved.
//

import Foundation

extension NSMutableAttributedString: Stylable {

    public var asAttributedString: NSAttributedString {
        return self as NSAttributedString
    }

    public func font(_ value: UIFont) -> Stylable {
        return addAttribute(.font, value: value)
    }

    public func foregroundColor(_ value: UIColor) -> Stylable {
        return addAttribute(.foregroundColor, value: value)
    }

    public func attachment(_ value: NSTextAttachment) -> Stylable {
        return addAttribute(.attachment, value: value)
    }

    public func backgroundColor(_ value: UIColor) -> Stylable {
        return addAttribute(.backgroundColor, value: value)
    }

    public func baselineOffset(_ value: Float) -> Stylable {
        return addAttribute(.baselineOffset, value: value)
    }

    public func expansion(_ value: Float) -> Stylable {
        return addAttribute(.expansion, value: value)
    }

    public func kern(_ value: Float) -> Stylable {
        return addAttribute(.kern, value: value)
    }

    public func ligature(_ value: Int) -> Stylable {
        return addAttribute(.ligature, value: value)
    }

    public func link(_ value: URL) -> Stylable {
        return addAttribute(.link, value: value)
    }

    public func obliqueness(_ value: Float) -> Stylable {
        return addAttribute(.obliqueness, value: value)
    }

    public func paragraphStyle(_ value: NSParagraphStyle) -> Stylable {
        return addAttribute(.paragraphStyle, value: value)
    }

    public func shadow(_ value: NSShadow) -> Stylable {
        return addAttribute(.shadow, value: value)
    }

    public func strikethroughColor(_ value: UIColor) -> Stylable {
        return addAttribute(.strikethroughColor, value: value)
    }

    public func strikethroughStyle(_ value: Int) -> Stylable {
        return addAttribute(.strikethroughStyle, value: value)
    }

    public func strokeColor(_ value: UIColor) -> Stylable {
        return addAttribute(.strokeColor, value: value)
    }

    public func strokeWidth(_ value: Int) -> Stylable {
        return addAttribute(.strokeWidth, value: value)
    }

    public func textEffect(_ value: String) -> Stylable {
        return addAttribute(.textEffect, value: value)
    }

    public func underlineColor(_ value: UIColor) -> Stylable {
        return addAttribute(.underlineColor, value: value)
    }

    public func underlineStyle(_ value: NSUnderlineStyle) -> Stylable {
        return addAttribute(.underlineStyle, value: value)
    }

    public func writingDirection(_ value: [NSWritingDirection]) -> Stylable {
        return addAttribute(.writingDirection, value: value)
    }

    public func withSpace(_ count: Int) -> Stylable {
        let x: String =  (0..<count).map { _ in " " }.joined()
        return (self ++ x)
    }

    public func withDelimiter(_ delimiter: String) -> Stylable {
        return self ++ delimiter;
    }

    private func unwrap(_ range: NSRange?) -> NSRange {
        return range ?? NSRange(location: 0, length: string.count - 1)
    }

    private func addAttribute(_ key: NSAttributedString.Key, value: Any) -> Self {
        addAttribute(key, value: value, range: NSRange(location: 0, length: string.count - 1))
        return self
    }
}

infix operator ++

func ++ (lhs: Stylable, rhs: String) -> Stylable {
    let base = lhs as! NSMutableAttributedString
    base.append(NSAttributedString(string: rhs))
    return base
}

func ++ (lhs: String, rhs: Stylable) -> Stylable {
    let base = NSMutableAttributedString(string: lhs)
    base.append(rhs.asAttributedString)
    return base
}

func ++ (lhs: Stylable, rhs: Stylable) -> Stylable {
    let base = lhs as! NSMutableAttributedString
    base.append(rhs.asAttributedString)
    return base
}
