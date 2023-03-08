//
//  UserView.swift
//  s23-academy-playground
//
//  Created by Samuel Shi on 3/7/23.
//

import SwiftUI

class User: ObservableObject {
    @Published var name: String = "Doug"
    @Published var username: String = "GoinHam420"
}

struct UserView: View {
    @StateObject private var user = User()
    
    var body: some View {
        VStack {
            Text("User: \(user.name)")
            Text("Username: \(user.username)")
            
            Button("Change to Bill") {
                user.name = "Bill"
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
