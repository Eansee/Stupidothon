//
//  infoView.swift
//  Stupidathon
//
//  Created by Koh Ean See on 22/11/23.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "Welcome", withExtension: ".m4a") else { return }
        
        do {
           player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

struct infoView: View {

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to this app where it is useless yet entertaining")
                
                Button("Play") {
                    SoundManager.instance.playSound()
                }
                .accentColor(.green)
                

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
