//
//  BallView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 3/21/23.
//

import SwiftUI

struct BallView: View {
    @StateObject var vm = BallViewModel()
    var body: some View {
        VStack {
            Text("\(vm.firstName)")
            Button("Fetch") {
                vm.fetchData()
            }
        }
    }
}

struct BallView_Previews: PreviewProvider {
    static var previews: some View {
        BallView()
    }
}
