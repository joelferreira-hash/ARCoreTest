//
//  ContentView.swift
//  ARCore
//
//  Created by Joel on 2/6/24.
//

import SwiftUI
import ARKit
import SceneKit

struct ContentView: View {
    @StateObject private var arViewModel = ARViewModel()

    var body: some View {
        ZStack {
            ARViewContainer(viewModel: arViewModel)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        arViewModel.changeModelColor(to: .red)
                    }) {
                        Text("Red")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        arViewModel.changeModelColor(to: .blue)
                    }) {
                        Text("Blue")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        arViewModel.undoLastPlacement()
                    }) {
                        Text("Undo")
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.8))
                .cornerRadius(15)
                .padding(.horizontal)
            }
        }
    }
}

