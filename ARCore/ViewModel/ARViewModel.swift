//
//  ARViewModel.swift
//  ARCore
//
//  Created by Joel on 2/6/24.
//

import SwiftUI
import ARKit
import SceneKit

// MARK: - AR ViewModel
// ARViewModel: Manages AR session, model placement, and other AR-related functionality.

class ARViewModel: NSObject, ObservableObject {
    
    var sceneView: ARSCNView!
    var currentModelNode: SCNNode?
    var placedModels: [SCNNode] = []

    override init() {
        super.init()
        setupARSession()
    }

    func setupARSession() {
        guard let sceneView = sceneView else { return }
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal] // Detect horizontal planes
        sceneView.session.run(configuration)
    }

    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        guard let sceneView = sceneView else { return }
        let location = gesture.location(in: sceneView)

        // Perform hit test to detect if the tap is on an existing plane! :)
        let hitTestResults = sceneView.hitTest(location, types: .existingPlaneUsingExtent)
        if let hitResult = hitTestResults.first {
            add3DModel(at: hitResult.worldTransform)
        }
    }

    // Adds a 3D model at the specified world transform
    func add3DModel(at transform: matrix_float4x4) {
        guard let modelScene = SCNScene(named: "art.scnassets/model.usdz"),
              let modelNode = modelScene.rootNode.childNodes.first else { return }

        modelNode.transform = SCNMatrix4(transform)
        modelNode.scale = SCNVector3(0.1, 0.1, 0.1)

        sceneView.scene.rootNode.addChildNode(modelNode)
        placedModels.append(modelNode)
        currentModelNode = modelNode
    }

    func changeModelColor(to color: UIColor) {
        currentModelNode?.geometry?.firstMaterial?.diffuse.contents = color
    }

    func undoLastPlacement() {
        guard let lastModel = placedModels.popLast() else { return }
        lastModel.removeFromParentNode()
    }

}
