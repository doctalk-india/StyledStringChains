//
//  String+extensions.swift
//  StyledStringChains
//
//  Created by Sourav Chandra on 17/03/19.
//  Copyright © 2019 Pulse Care. All rights reserved.
//

import Foundation

extension String {
    public var styled: Stylable {
        return NSMutableAttributedString(string: self)
    }
}
