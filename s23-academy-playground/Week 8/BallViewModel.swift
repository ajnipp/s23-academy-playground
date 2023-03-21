//
//  BallViewModel.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 3/21/23.
//

import Foundation

@MainActor
class BallViewModel: ObservableObject {
    @Published var player: Player?
    
    var firstName: String {
        guard let name = player?.first_name else {
            return "No name"
        }
        return name
    }
    
    func fetchData() {
        Task {
            player = await APIService.fetchPlayerFromID(id: 600)
        }
    }
}
