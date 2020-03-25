//
//  NotesInfo.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct NotesInfo: View {
    
    @Binding var notesAmount: Int
    @Binding var favoriteAmount: Int
    @Binding var deletedAmount: Int
    
    var body: some View {
        VStack {
            HStack {
                Text("Notes").bold()
                Spacer()
                Text(String(notesAmount))
            }.padding()
            HStack {
                Text("Favorite").bold()
                Spacer()
                Text(String(favoriteAmount))
            }.padding()
            HStack {
                Text("Deleted").bold()
                Spacer()
                Text(String(deletedAmount))
            }.padding()
        }
    }
}

#if DEBUG
struct NotesInfo_Previews: PreviewProvider {
    static var previews: some View {
        NotesInfo(notesAmount: .constant(42), favoriteAmount: .constant(25), deletedAmount: .constant(99))
    }
}
#endif
