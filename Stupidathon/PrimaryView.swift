//
//  PrimaryView.swift
//  Stupidathon
//
//  Created by Koh Ean See on 22/11/23.
//

import SwiftUI

struct PrimaryView: View {
    @State private var offset = CGSize.zero //initial point, value 0
    
    var body: some View {
        VStack {
            ZStack {
                Image("Duck")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .opacity(0.8)
                    .offset(offset)
                    .gesture(DragGesture().onChanged { gesture in
                        self.offset = gesture.translation //enable the image to moved around
                    })
                    .animation(.spring()) //smoother the animation
                
                VStack {
                    Spacer()
                    Text("Drag the duck")
                        .padding()
                        
                }
            }
        }
    }
}

struct PrimaryView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryView()
    }
}
