//
//  NoteListConfigurator.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
protocol NoteListWireFrameProtocol {
    static func createPresenter() -> NoteListPresenter
}
class NoteListWireFrame: NoteListWireFrameProtocol {
    static func createPresenter() -> NoteListPresenter {
        let interactor: NoteListInteractorProtocol = NoteListInteractor()
        return NoteListPresenter(with: interactor)
    }
}
