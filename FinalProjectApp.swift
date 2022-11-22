//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by Trevor J. Hattendorf on 11/22/22.
//
import SwiftUI

class GameState: ObservableObject {
    @Published var viewState:Int;
    @Published var fullName:String?;
    @Published var weightClass:String?;
    @Published var heightClass:String?;
    @Published var wingSpan:Int?;
    @Published var bmiClass:Int?;
    
    
    init(viewState:Int) {
        self.viewState = viewState;
    }
}
@main
struct FormCreation: App {
    @ObservedObject var gameState:GameState = GameState(viewState: 0);
    var body: some Scene {
        WindowGroup {
            if (gameState.viewState == 0) {
                FormCreationView().environmentObject(gameState);
            } else if (gameState.viewState == 1) {
                ProfileView().environmentObject(gameState);
            } else if (gameState.viewState == 2) {
                VideoView().environmentObject(gameState);
            }
        }
    }
}
