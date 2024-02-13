import Foundation
import SwiftUI

struct Owner : Hashable, Codable, Identifiable{
    var name: String
    var surname: String
    var id: Int
    var rate: Int
    var isOwner: Bool
    var descripcion: String
    
    private var photoName: String
    var photo: Image {
        Image(photoName)
    }
}
