//
//  Reducer.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation

protocol Reducer {
    associatedtype StateType: ReduxState
    func reduce(s: StateType, a: Action) -> StateType
}
