
# 🚀 **ARKit + SwiftUI: Augmented Reality App**

This project demonstrates an **ARKit-based augmented reality app** built with **SwiftUI**. The app allows users to place, customize, and interact with 3D models in real-time using their device's camera. It showcases advanced iOS development skills, including integration with ARKit, SceneKit, and SwiftUI.

---

## 🌟 **Features**

1. **Dynamic Model Placement**:
   - Tap on detected horizontal planes to place 3D models in the AR environment.
   - Models are positioned and scaled dynamically based on the user's interaction.

2. **Customization**:
   - Change the color of the most recently placed model using UI controls.

3. **Undo Functionality**:
   - Remove the last placed model with a single tap on the "Undo" button.

4. **Plane Visualization**:
   - Detected horizontal planes are visualized with semi-transparent overlays for better user experience.

5. **Scalable Architecture**:
   - Built with a clean architecture approach, separating concerns into distinct layers (Presentation, Domain, Data).

---

## 🛠 **Technologies Used**

- **ARKit**: For managing the augmented reality session and detecting planes.
- **SceneKit**: For rendering and interacting with 3D models.
- **SwiftUI**: For building the user interface and integrating reactive updates.

---

## 🚀 **Getting Started**

### **Prerequisites**

- Xcode 14 or later.
- An Apple Developer account (required for testing AR features on a physical device).
- A physical iOS device with ARKit support (AR features are not available in the simulator).

---

### **Installation**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/arkit-swiftui-app.git
   cd arkit-swiftui-app
   ```

2. **Open the Project in Xcode**:
   ```bash
   open ARKitSwiftUIApp.xcodeproj
   ```

3. **Add 3D Models**:
   - Place your `.usdz` or `.scn` files in the `art.scnassets` folder (or `Assets.xcassets` if you prefer).
   - Update the `add3DModel(at:)` method in `ARViewModel.swift` to reference your model file.

4. **Run the App**:
   - Connect a physical iOS device.
   - Select your device as the target in Xcode.
   - Click **Run** to build and launch the app.

---

### **Usage**

1. **Place a Model**:
   - Point your device at a flat surface (e.g., a table or floor).
   - Tap on the screen to place a 3D model at the detected location.

2. **Customize the Model**:
   - Use the customization panel at the bottom of the screen to change the model's color.

3. **Undo Placement**:
   - Tap the "Undo" button to remove the most recently placed model.

---

## 🔧 **Customization Options**

1. **Change the 3D Model**:
   - Replace `"model.usdz"` in `ARViewModel.swift` with your own 3D model file.
   - Ensure the model is optimized for mobile devices to maintain smooth performance.

2. **Add More Customization Controls**:
   - Extend the customization panel to include additional options like scaling, rotation, or texture changes.

3. **Dynamic Model Loading**:
   - Fetch 3D models from a remote server instead of bundling them with the app.

---

## 📝 **Contributing**

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request with a detailed description of your changes.

---

