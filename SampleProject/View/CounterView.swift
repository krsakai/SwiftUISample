//
//  CounterView.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import SwiftUI

struct CounterView: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        List {
            Text("CounterView: \(UUID().uuidString)")
            Text("Counter: \(self.appData.appState.counterState.count)")
        }
    }
}

#if DEBUG
struct CounterView_Previews : PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
#endif
