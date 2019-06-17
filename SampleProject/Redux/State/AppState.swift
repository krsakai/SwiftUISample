//
//  AppState.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation

struct AppState: ReduxState {
    private(set) var userState: UserState = UserState()
    private(set) var counterState: CounterState = CounterState(count: 0)
}
