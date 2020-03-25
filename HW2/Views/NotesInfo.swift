//
//  NotesInfo.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct NotesInfo: View {
    var body: some View {
        VStack {
            HStack {
                Text("Notes").bold()
                Spacer()
                Text("13")
            }.padding()
            HStack {
                Text("Favorite").bold()
                Spacer()
                Text("3")
            }.padding()
            HStack {
                Text("Deleted").bold()
                Spacer()
                Text("7")
            }.padding()
        }
    }
}

#if DEBUG
struct NotesInfo_Previews: PreviewProvider {
    static var previews: some View {
        NotesInfo()
    }
}
#endif
