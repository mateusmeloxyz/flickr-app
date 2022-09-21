import Foundation

struct Photo: Decodable {
    var id: String
    var farm: Int
    var server: String
    let secret: String

    var thumbnailUrl: URL? {
        return URL(string: "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_t.jpg")
    }
    
    var largeUrl: URL? {
        return URL(string: "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_b.jpg")
    }
}
