//
//  String - EmptyChecking.swift
//  CupcakeCorner
//
//  Created by Владислав on 12.12.2023.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines) .isEmpty
    }
}
