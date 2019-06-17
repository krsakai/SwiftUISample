//
//  CounterStateReducer.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation

final class CounterStateReducer: Reducer {
    typealias StateType = CounterState
    
    func reduce(s: CounterState, a: Action) -> CounterState {
        switch(a) {
        case CounterAction.CountDown:
            return CounterState(count: s.count - 1)
        case CounterAction.CountUp:
            return CounterState(count: s.count + 1)
        default:
            return s
        }
    }
}
