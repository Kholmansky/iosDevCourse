import UIKit

try FileManager.copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes", "Stickers")

FileManager.documentDirectoryURL

extension FileManager {
  static func getPNGFromDocumentDirectory(subdirectoryName: String, imageName: String) -> UIImage? {
    return UIImage(contentsOfFile: FileManager.documentDirectoryURL.appendingPathComponent(subdirectoryName).appendingPathComponent(imageName).appendingPathExtension("png").path)
  }
}

FileManager.getPNGFromDocumentDirectory(subdirectoryName: "Stickers", imageName: "frog")
