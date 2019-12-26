//
//  NoteListView.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/26/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import SwiftUI

struct NoteListView: View {
    @EnvironmentObject var presenter: NoteListPresenter
    var body: some View {
        NavigationView{
            AddNoteButton()
            Text(presenter.noteViewModels[0].title)
        }
    }
}

struct NoteListView_Previews: PreviewProvider {
    static var previews: some View {
        NoteListView()
    }
}
