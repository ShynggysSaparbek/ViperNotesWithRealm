//
//  AddNoteView.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/26/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import SwiftUI

struct AddNoteView: View {
    @EnvironmentObject var presenter: NoteListPresenter
    @State private var noteData: NoteData = NoteData(title: "", text: "")
    
    var body: some View {
        VStack{
            Text("Напишите свою заметку")
            
            TextField("Напишите закголовок", text: $noteData.title)
                .padding(.horizontal, 16.0)
                .frame(height: 40.0)
                .background(Color(white: 0.9))
                .cornerRadius(8)
            
            
            TextField("dcdcd", text:  $noteData.text)
                .multilineTextAlignment(.center)                .padding(.horizontal, 16.0)
                .frame(height: 400.0)
                .background(Color(white: 0.9))
                .cornerRadius(8)
            
            Button(action: {
                if self.noteData.title != ""{
                    do{
                        try self.presenter.addNote(from: self.noteData)
                        self.noteData.text = ""
                        self.noteData.title = ""
                    }catch{
                        print("Saving failed")
                    }
                }
            }, label: {
                Text("Сохранить Заметку")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            })
                .padding(.horizontal)
                .frame(height: 50.0)
                .background(Color.blue)
                .cornerRadius(16)
        }
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
