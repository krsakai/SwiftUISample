//
//  ContentView.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            Text("ContentView: \(UUID().uuidString)")
            Text("CounterView ↓")
            CounterView()
            Text("CounterButton ↓")
            CounterButton()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

