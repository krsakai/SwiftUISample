//
//  CounterButton.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import SwiftUI

struct CounterButton: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        List {
            Text("CounterButton: \(UUID().uuidString)")
            Button(action: {
                self.appData.dispatch(a: CounterAction.CountUp)
            }) {
                Text("Count Up")
            }
            Button(action: {
                self.appData.dispatch(a: CounterAction.CountDown)
            }) {
                Text("Count Down")
            }
        }
    }
}

#if DEBUG
struct CounterButton_Previews : PreviewProvider {
    static var previews: some View {
        CounterButton()
    }
}
#endif
