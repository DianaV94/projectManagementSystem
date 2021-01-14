//
//  Network.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:2004")!)

}
