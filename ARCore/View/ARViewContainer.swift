//
//  ARViewContainer.swift
//  ARCore
//
//  Created by Joel on  2/6/24.
//

import SwiftUI
import ARKit
import SceneKit


// MARK: - AR View Container
struct ARViewContainer: UIViewRepresentable {
    let viewModel: ARViewModel

    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView(frame: .zero)
        arView.delegate = viewModel
        viewModel.sceneView = arView

        // Add tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: viewModel, action: #selector(viewModel.handleTap(_:)))
        arView.addGestureRecognizer(tapGesture)

        return arView
    }

    func updateUIView(_ uiView: ARSCNView, context: Context) {}
}

