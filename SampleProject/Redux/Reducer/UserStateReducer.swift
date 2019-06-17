//
//  UserStateReducer.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation

final class UserStateReducer: Reducer {
    typealias StateType = UserState
    
    func reduce(s: UserState, a: Action) -> UserState {
        switch(a) {
        case UserStateAction.SetFirstName(let newFirstName):
            return UserState(firstName: newFirstName, lastName: s.lastName)
        default:
            return s
        }
    }
}
