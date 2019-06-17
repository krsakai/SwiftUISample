//
//  AppData.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class AppData: BindableObject {
    var didChange = PassthroughSubject<AppState, Never>()
    
    private (set) var appState = AppState()
    
    func dispatch(a: Action) {
        self.appState = AppStateReducer().reduce(s: appState, a: a)
        didChange.send(self.appState)
    }
}
