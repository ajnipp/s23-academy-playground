//
//  BallService.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 3/21/23.
//

import Foundation

//class BallService {
//    static func fetchPlayerFromID(id: Int) async throws -> Player {
//        
//        let url = URL(string: "https://www.balldontlie.io/api/v1/players/\(id)")!
//
//        let (data, _) = try await URLSession.shared.data(from: url)
//
//        let decodedData = try JSONDecoder().decode(Player.self, from: data)
//        return decodedData
//    }
//}

//struct Player: Codable {
//    let id: Int
//    let first_name, last_name, position: String
//    let height_feet, height_inches, weight_pounds: Int
//    let team: Team
//}
//
//struct Team: Codable {
//    let id: Int
//    let abbreviation, city, conference, division: String
//    let full_name, name: String
//}
