//
//  NoteListWireFrame.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
protocol NoteListWireframeProtocol{
    static func createPresenter() -> NoteListPresenter
}
class NoteListWireframe: NoteListWireframeProtocol{
    static func createPresenter() -> NoteListPresenter {
        let dependecies = NoteListDependencies()
        
        let service: NoteService = NotesByRealmService()
        
        let interactor = NoteListInteractor(dependencies: dependecies, service: service)
        
        let presenter =  NoteListPresenter(dependencies: dependecies, interactor: interactor)
        return presenter
    }
    
    
}
