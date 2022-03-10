//
//  Extensions.swift
//  Netflix_Mark
//
//  Created by MarkYu on 2022/2/25.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
