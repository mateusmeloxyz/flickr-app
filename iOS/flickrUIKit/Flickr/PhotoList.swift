import Foundation

struct PhotoList: Decodable {
    
    private enum RootKeys: String, CodingKey {
        case photos
    }
    
    private enum PhotosKeys: String, CodingKey {
        case photo
        case page
        case pages
    }
    
    let photos: [Photo]
    let page: Int
    let pages: Int
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: RootKeys.self)
        let photosRoot = try container.nestedContainer(keyedBy: PhotosKeys.self, forKey: .photos)
        photos = try photosRoot.decode([Photo].self, forKey: .photo)
        page = try photosRoot.decode(Int.self, forKey: .page)
        pages = try photosRoot.decode(Int.self, forKey: .pages)
    }
    
}
