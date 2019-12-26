//
//  SaveNoteButton.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/25/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import SwiftUI

struct SaveNoteButton: View {
    var body: some View {
        Button(action: {
            <#code#>
        }){
            Text("Сохранить заметку")
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.vertical)
            }
                .padding()
                .frame(height: 50.0)
                .background(Color.gray)
                .cornerRadius(10)
    }
}

struct SaveNoteButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveNoteButton()
    }
}
