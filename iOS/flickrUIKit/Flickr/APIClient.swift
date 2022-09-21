import Foundation

class APIClient {
    
    private let flickrKey: String = "675894853ae8ec6c242fa4c077bcf4a0"
    
    /**
        TODO: Update method signature accordingly to perform network request and figure out how to display
            results in the appropriate ViewController
    */
    func fetch(query: String) {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.flickr.com"
        components.path = "/services/rest"
        components.queryItems = [
            URLQueryItem(name: "method", value: "flickr.photos.search"),
            URLQueryItem(name: "api_key", value: self.flickrKey),
            URLQueryItem(name: "text", value: query),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "nojsoncallback", value: "1"),
            URLQueryItem(name: "page", value: "1")
        ]

        guard let url = components.url else {
            print("Failed generate Flickr URL")
            return
        }
        
        // TODO
        
        let postUrl = URL(string: "https://jsonplaceholder.typicode.com/posts");
        let session = URLSession.shared.dataTask(with: postUrl!){
            (data, response, error) in
            
            print("response: \(String(describing: response))")
            print("response: \(String(describing: error))")
        }
        
        session.resume()
        
//        (session.dataTaskWithURL(NSURL(string :url)!,
//            completionHandler: {
//            (data :NSData!, response, error) -> Void in
//
//            let result = NSString(data: data, encoding: NSUTF8StringEncoding)
//
//            println(result!)
//
//        })).resume()
    }
}
