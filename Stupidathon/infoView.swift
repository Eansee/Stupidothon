//
//  infoView.swift
//  Stupidathon
//
//  Created by Koh Ean See on 22/11/23.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to this app where it is useless yet entertaining")
            }
            .navigationTitle("Introduction")
        }
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
