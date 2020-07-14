//: [Previous](@previous)
//: ### The Guard Statement
//: - Callout(Exercise):
//: If `downloadComplete` is false and `pageInitialized` is true, then will `showStory(downloadComplete:pageInitialized:)` exit early?
//:
func showStory(downloadComplete: Bool, pageInitialized: Bool) {
    guard downloadComplete else {
        print("Download incomplete")
            return }
    guard pageInitialized else {
        print("Page not initialized")
        return }
    
    print("story time!")
}

showStory(downloadComplete: true, pageInitialized: false)

//: - Callout(Exercise):
//: If `downloadComplete` is true and `panelsLoaded` is false, then what is printed when `showComic(downloadComplete:panelsLoaded:)` is invoked?
//:
func showComic(downloadComplete: Bool, panelsLoaded: Bool) {
    guard downloadComplete else {
        print("download not complete")
        return
    }
    
    guard panelsLoaded else {
        print("panels not loaded")
        return
    }
    
    print("comic time!")
}

showStory(downloadComplete: true, pageInitialized: true)
//: [Next](@next)
