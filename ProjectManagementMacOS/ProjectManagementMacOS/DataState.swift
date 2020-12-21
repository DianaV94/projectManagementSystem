//
//  File.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 21.12.2020.
//

enum DataState<Value> {
    case initial
    case loading
    case loaded(Value)
    case failed(Error)
    
    var data: Value? {
        if case let .loaded(value) = self {
            return value
        }
        return nil
    }
}

func get<Whole, Value>(_ keypath: KeyPath<Whole, Value>) -> (Whole) -> Value {
    { whole in
        whole[keyPath: keypath]
    }
}
