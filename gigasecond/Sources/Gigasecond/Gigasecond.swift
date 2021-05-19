//Solution goes in Sources
import Foundation

class Gigasecond {
    
    let description : String
    
    init?(from : String){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        var date = dateFormatter.date(from:from)
        
        let seconds = 1000000000
        
        date?.addTimeInterval(TimeInterval(seconds))
        
        if let unwrapped = date {
            self.description = dateFormatter.string(from: unwrapped)
        } else {
            return nil
        }
    }
}
