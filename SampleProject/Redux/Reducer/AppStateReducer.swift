//
//  AppStateReducer.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation

final class AppStateReducer: Reducer {
    typealias StateType = AppState
    
    func reduce(s: AppState, a: Action) -> AppState {
        return AppState(
            userState: UserStateReducer().reduce(s: s.userState, a: a),
            counterState: CounterStateReducer().reduce(s: s.counterState, a: a)
        )
    }
}
