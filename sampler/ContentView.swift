//
//  ContentView.swift
//  sampler
//
//  Created by tn on 2022/05/15.
//

import SwiftUI
import AVFoundation

struct CircleButtonStyle: ButtonStyle {
        
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 64, height: 64)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .clipShape(Circle())
     }
}

struct ContentView: View {
    private let bdSound = try! AVAudioPlayer(data: NSDataAsset(name: "BD")!.data)
    private let cbSound = try! AVAudioPlayer(data: NSDataAsset(name: "CB")!.data)
    private let chSound = try! AVAudioPlayer(data: NSDataAsset(name: "CH")!.data)
    private let clSound = try! AVAudioPlayer(data: NSDataAsset(name: "CL")!.data)
    private let cpSound = try! AVAudioPlayer(data: NSDataAsset(name: "CP")!.data)
    private let cySound = try! AVAudioPlayer(data: NSDataAsset(name: "CY")!.data)
    private let hcSound = try! AVAudioPlayer(data: NSDataAsset(name: "HC")!.data)
    private let htSound = try! AVAudioPlayer(data: NSDataAsset(name: "HT")!.data)
    private let lcSound = try! AVAudioPlayer(data: NSDataAsset(name: "LC")!.data)
    private let ltSound = try! AVAudioPlayer(data: NSDataAsset(name: "LT")!.data)
    private let maSound = try! AVAudioPlayer(data: NSDataAsset(name: "MA")!.data)
    private let mcSound = try! AVAudioPlayer(data: NSDataAsset(name: "MC")!.data)
    private let mtSound = try! AVAudioPlayer(data: NSDataAsset(name: "MT")!.data)
    private let ohSound = try! AVAudioPlayer(data: NSDataAsset(name: "OH")!.data)
    private let rsSound = try! AVAudioPlayer(data: NSDataAsset(name: "RS")!.data)
    private let sdSound = try! AVAudioPlayer(data: NSDataAsset(name: "SD")!.data)

    private func playSound(name: String){
        switch name {
            case "BD":
                bdSound.stop()
                bdSound.currentTime = 0.0
                bdSound.play()
            case "CB":
                cbSound.stop()
                cbSound.currentTime = 0.0
                cbSound.play()
            case "CH":
                chSound.stop()
                chSound.currentTime = 0.0
                chSound.play()
            case "CL":
                clSound.stop()
                clSound.currentTime = 0.0
                clSound.play()
            case "CP":
                cpSound.stop()
                cpSound.currentTime = 0.0
                cpSound.play()
            case "CY":
                cySound.stop()
                cySound.currentTime = 0.0
                cySound.play()
            case "HC":
                hcSound.stop()
                hcSound.currentTime = 0.0
                hcSound.play()
            case "HT":
                htSound.stop()
                htSound.currentTime = 0.0
                htSound.play()
            case "LC":
                lcSound.stop()
                lcSound.currentTime = 0.0
                lcSound.play()
            case "LT":
                ltSound.stop()
                ltSound.currentTime = 0.0
                ltSound.play()
            case "MA":
                maSound.stop()
                maSound.currentTime = 0.0
                maSound.play()
            case "MC":
                mcSound.stop()
                mcSound.currentTime = 0.0
                mcSound.play()
            case "MT":
                mtSound.stop()
                mtSound.currentTime = 0.0
                mtSound.play()
            case "OH":
                ohSound.stop()
                ohSound.currentTime = 0.0
                ohSound.play()
            case "RS":
                rsSound.stop()
                rsSound.currentTime = 0.0
                rsSound.play()
            case "SD":
                sdSound.stop()
                sdSound.currentTime = 0.0
                sdSound.play()
            default:
                self.playSound(name: "CB")
        }
    }

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    playSound(name: "MT")
                    }) {
                        Text("01")

                }
                .padding(12)
                Button(action: {
                        playSound(name: "OH")
                    }) {
                        Text("02")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "RS")
                    }) {
                        Text("03")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "SD")
                    }) {
                        Text("04")
                }
                .padding(12)
            }
            HStack {
                Button(action: {
                        playSound(name: "LC")
                    }) {
                        Text("05")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "LT")
                    }) {
                        Text("06")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "MA")
                    }) {
                        Text("07")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "MC")
                    }) {
                        Text("08")
                }
                .padding(12)
            }
            HStack {
                Button(action: {
                        playSound(name: "CP")
                    }) {
                        Text("09")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "CY")
                    }) {
                        Text("10")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "HC")
                    }) {
                        Text("11")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "HT")
                    }) {
                        Text("12")
                }
                .padding(12)
            }
            HStack {
                Button(action: {
                        playSound(name: "BD")
                    }) {
                        Text("13")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "CB")
                    }) {
                        Text("14")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "CH")
                    }) {
                        Text("15")
                }
                .padding(12)
                Button(action: {
                        playSound(name: "CL")
                    }) {
                        Text("16")
                }
                .padding(12)
            }
        }.buttonStyle(CircleButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
