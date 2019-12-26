//
//  AddNoteButton.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/26/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import SwiftUI

struct AddNoteButton: View {
    var body: some View {
        NavigationLink(destination: AddNoteView()) {
            Text("Добавьте заметку")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            
        }
        .padding(.horizontal)
        .frame(height: 50.0)
        .background(Color.blue)
        .cornerRadius(16)
    }
}

struct AddNoteButton_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteButton()
    }
}
