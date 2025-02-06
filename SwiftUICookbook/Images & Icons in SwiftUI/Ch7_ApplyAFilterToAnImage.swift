//
//  Ch7_ApplyAFilterToAnImage.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/2/6.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct Ch7_ApplyAFilterToAnImage: View {
    
    let image: Image
    
    init() {
        let uiImage = UIImage(resource: .coolCat)
        let filteredUIImage = Ch7_ApplyAFilterToAnImage.applySepiaFilter(to: uiImage)
        image = Image(uiImage: filteredUIImage)
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
    }
    
    /// UIImage → CIImage → (CIFilter) → (CIContext) → CGImage → UIImage
    static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
        // Convert UIImage to CIImage(used by Core Image)
        guard let ciImage = CIImage(image: inputImage) else { return inputImage }
        
        // Create a CIFilter object
        let filter = CIFilter.gaussianBlur()
        filter.inputImage = ciImage
//        filter.scale = 100
//        filter.intensity = 0.6
        
        // Get a CIContext
        let context = CIContext()
        
        // Create a CGImage from the CIImage
        guard let outputCIImage = filter.outputImage,
              let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else { return inputImage }
        
        // Create a UIImage from the CGImage
        let outputUIImage = UIImage(cgImage: cgImage)
        
        return outputUIImage
    }
}

// Core Image Filter Choices
// gaussianBlur
// colorInvert
// photoEffectMono
// pixellate
// sharpenLuminance
// vignette
// sepiaTone
// photoEffectInstant
// colorMonochrome
// unsharpMask
// bloom

#Preview {
    Ch7_ApplyAFilterToAnImage()
}
