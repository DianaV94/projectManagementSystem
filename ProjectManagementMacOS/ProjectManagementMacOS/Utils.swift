//
//  Utils.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 04.01.2021.
//

import Foundation

extension String {
    func mapNonempty<T>(_ f: (String) -> T) {
        if !isEmpty {
            f(self)
        }
    }
}

extension String {
    // Useful for update operations
    var wrappedIntoApolloOptional: Optional<String?> {
        isEmpty ? .none : .some(self)
    }
}
