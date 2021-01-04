//
//  Utils.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 04.01.2021.
//

import Foundation

extension String {
    func doOnNonempty(_ f: (String) -> Void) {
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
