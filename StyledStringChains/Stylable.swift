//
//  Stylable.swift
//  StyledStringChains
//
//  Created by Sourav Chandra on 18/03/19.
//  Copyright © 2019 Pulse Care. All rights reserved.
//

import Foundation

public protocol Stylable {
    func font(_ value: UIFont) -> Stylable
    func foregroundColor(_ value: UIColor) -> Stylable
    func attachment(_ value: NSTextAttachment) -> Stylable
    func backgroundColor(_ value: UIColor) -> Stylable
    func baselineOffset(_ value: Float) -> Stylable
    func expansion(_ value: Float) -> Stylable
    func kern(_ value: Float) -> Stylable
    func ligature(_ value: Int) -> Stylable
    func link(_ value: URL) -> Stylable
    func obliqueness(_ value: Float) -> Stylable
    func paragraphStyle(_ value: NSParagraphStyle) -> Stylable
    func shadow(_ value: NSShadow) -> Stylable
    func strikethroughColor(_ value: UIColor) -> Stylable
    func strikethroughStyle(_ value: Int) -> Stylable
    func strokeColor(_ value: UIColor) -> Stylable
    func strokeWidth(_ value: Int) -> Stylable
    func textEffect(_ value: String) -> Stylable
    func underlineColor(_ value: UIColor) -> Stylable
    func underlineStyle(_ value: NSUnderlineStyle) -> Stylable
    func writingDirection(_ value: [NSWritingDirection]) -> Stylable

    var asAttributedString: NSAttributedString { get }
}
