//
//  InstagramView.swift
//  s23-academy-playground
//
//  Created by AlecNipp on 2/7/23.
//

import SwiftUI

struct InstagramView: View {
    let authorWidth = 30.0
    let authorHeight = 30.0
    
    let imageName = "Max-Nabokow"
    
    var body: some View {
        VStack {
            
            postHeader
            
            postImage
            
            bottomSection
        }
    }
    
    private var postImage: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
    }
    
    var postHeader: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: authorWidth, height: authorHeight)
                .clipShape(Circle())
            
            Text("Max")
            Spacer()
            Image(systemName: "ellipsis")
            
        }
        .padding(.horizontal, 8)
    }
    var bottomSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            Group {
                Text("**3452345623 likes**")
                Text("**max** I'm so excited for Arby's to open on Franklin!!!!")
            }
            
                .font(.footnote)
        }
        .padding(.horizontal, 8)
    }
}

struct InstagramView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramView()
    }
}
