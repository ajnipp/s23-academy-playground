////
////  PlayerView.swift
////  s23-academy-playground
////
////  Created by AlecNipp on 3/21/23.
////
//
//import SwiftUI
//
//struct PlayerView: View {
//    @State private var id = "0"
//    @State private var player: Player? = nil
//    var body: some View {
//        VStack {
//            TextField("Enter id", text: $id)
//                .textFieldStyle(.roundedBorder)
//                .onSubmit {
//                    Task {
//                        do {
//                            player = try await BallService.fetchPlayerFromID(id: Int(id) ?? 0)
//                        } catch is DecodingError {
//                            print("Decoding error!")
//                        } catch {
//                            print("Generic error")
//                        }
//                    }
//                }
//            Text("\(player?.first_name ?? "No") \(player?.last_name ?? "Name")")
//            Text(String(player?.height_feet ?? 99))
//        }
//    }
//}
//
//struct PlayerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlayerView()
//    }
//}
