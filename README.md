# iOS-Interview-Challenge

## About this project
A simple iOS app to integrate with the Flickr API to display a list of photos corresponding to a user's search input.

### Flickr API documentation
https://www.flickr.com/services/api/

Note: APIClient.swift, Photo.swift, and PhotoList.swift contain existing boilerplate code for this integration as a starting point suitable for either SwiftUI or UIKit usage.

### Project setup
The only setup needed is to open the project in Xcode. The candidate can choose to complete this project using either UIKit or SwiftUI with starter code provided for either option.

### Submission
Once you are ready to submit your work, update this README with a description of what you have built and any instructions necessary to build and use the app. Zip it and send it back.

## Bugs and Features

### Initial UI and PhotoList
The app contains initial API integration code in APIClient.swift which queries the Flickr API for the corresponding `PhotoList` and `Photo` codable json objects.

The app will have some initial UI sample code with TODOs marked as a starting point but the first task is to complete those TODOs to display a list of photos given a user's search input from a text field.

### Display photo details
After completing the initial photo list UI, create a photo detail page that can be selected from the main photo list. This detail page should include the corresponding photo and metadata about the photo.

### Choose your own feature!
Anything is fair game. Paginated scroll, new UIs, adding your favorite 3rd party library, tests… whatever you think shows off your iOS skills!
