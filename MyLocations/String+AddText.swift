//
//  String+AddText.swift
//  MyLocations
//
//  Created by 刘迪 on 4/2/15.
//  Copyright (c) 2015 roy. All rights reserved.
//

import Foundation

extension String {
    mutating func addText(text: String?,
                          withSeparator separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}