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
        
        guard let url = Bundle.main.url(forResource: "volume", withExtension: ".m4a") else { return }
        
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
                Text("testing volume...")
                
                Button("click this") {
                    SoundManager.instance.playSound()
                }
                .accentColor(.green)
                

            }
            .navigationTitle("testing")
            
            
            
        }
        
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
