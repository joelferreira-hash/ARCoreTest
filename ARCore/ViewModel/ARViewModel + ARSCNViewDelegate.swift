//
//  ARViewModel + ARSCNViewDelegate.swift
//  ARCore
//
//  Created by Joel on 2/6/24.
//
import SwiftUI
import ARKit
import SceneKit

// MARK: - ARSCNViewDelegate
// Called when a new AR anchor (e.g., a detected plane) is added to the AR scene
extension ARViewModel: ARSCNViewDelegate {
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        guard let planeAnchor = anchor as? ARPlaneAnchor else { return }
        let plane = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))
        plane.firstMaterial?.diffuse.contents = UIColor.blue.withAlphaComponent(0.5) 
        
        let planeNode = SCNNode(geometry: plane)
        planeNode.position = SCNVector3(planeAnchor.center.x, 0, planeAnchor.center.z)
        planeNode.transform = SCNMatrix4MakeRotation(-.pi / 2, 1, 0, 0)
        
        node.addChildNode(planeNode)
    }
}
