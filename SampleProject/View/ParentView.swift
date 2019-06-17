//
//  ParentView.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Parent: \(UUID().uuidString)")
                ContentView()
            }
        }
    }
}

#if DEBUG
struct ParentView_Previews : PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
#endif
