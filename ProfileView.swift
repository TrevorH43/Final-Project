//
//  Profile View.swift
//  FinalProject
//
//  Created by Trevor J. Hattendorf on 11/22/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var gameState:GameState;
    var body: some View{
        VStack{
            Text("Profile View");
            HStack {
                Text("Full Name: \(gameState.fullName!)")
            }
            HStack {
                Text("Weight Class: \(gameState.weightClass!)")
            }
            HStack {
                Text("Height Class: \(gameState.heightClass!)")
            }
            
        }
        
        HStack {
            Button("Videos") {
                gameState.viewState = 2;
            }
            Button("Workout Log") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}
