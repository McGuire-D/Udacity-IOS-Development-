
import Foundation

enum VideoAdjustment {
    case volume(Int) // value is 0-100
    case time(Int) // time in seconds
    case useCaptions(Bool) // on/off
}

let adjustment = VideoAdjustment.time(843)

switch adjustment {
case let .volume(value):
    print("volume: \(value)")
case let .time(seconds):
    let hour = seconds / 3600 /* 3600 seconds in an hour */
    let min = (seconds % 3600) / 60 /* 60 seconds in a minute */
    let sec = seconds % 60

    // String(format:_:) creates a String with a specified format ("hh:mm:ss")
    // here, each value uses two digits and is prefixed with zeroes
    let timecode = String(format: "%02d:%02d:%02d", hour, min, sec)
    print("move to: \(timecode)")
case let .useCaptions(useCaptions):
    print("captions: \(useCaptions ? "on" : "off")")
}

enum VideoAdjustment {
    case volume(Int) // value is 0-100
    case time(Int) // time in seconds
    case useCaptions(Bool) // on/off
}

let change = VideoAdjustment.time(843)

switch change {
case let .time(seconds) where seconds <= 3600:
    print("under an hour")
case .volume:
    print("change volume")
case .useCaptions:
    print("use captions")
}
