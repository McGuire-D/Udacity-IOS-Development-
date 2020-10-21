//
//  ViewController.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 9/14/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

// code to allow Textbox to have other attributes (bold, italics, normal)
// https://stackoverflow.com/questions/28496093/making-text-bold-using-attributed-string-in-swift/37992022
extension NSMutableAttributedString {
    @discardableResult func bold(_ text: String) -> NSMutableAttributedString { // note bold is for title
        let attrs:  [NSAttributedString.Key: Any] = [.font: UIFont.boldSystemFont(ofSize: 20)]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        self.append(boldString)
        
        return self
    }
    
    @discardableResult func italics(_ text: String) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont.italicSystemFont(ofSize: 16)]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        self.append(boldString)
        
        return self
    }
    
    @discardableResult func normal(_ text: String) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont.systemFont(ofSize: 16)]
        let normal = NSAttributedString(string: text, attributes: attrs)
        self.append(normal)
        
        return self
    }
    
    @discardableResult func newline() -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont.systemFont(ofSize: 16)]
        let normal = NSAttributedString(string: "\n\n", attributes: attrs)
        self.append(normal)
        
        return self
    }
}

class ViewController: UIViewController, datePickerDelegate {
    var networkManager: NetworkManager?
    
    let apiKey : String = "DEMO_KEY" // replace API key with https://api.nasa.gov/index.html#apply-for-an-api-key
    
    @IBOutlet weak var LoadSpinner: UIActivityIndicatorView!
    @IBOutlet weak var ViewImage: UIImageView!
    @IBOutlet weak var TextBox: UITextView!
    
    struct photoInfo: Codable {
        var date: String
        var title: String
        var description: String
        var url: URL
        var copyright: String?
        enum CodingKeys: String, CodingKey {
            case date
            case title
            case description  = "explanation"
            case url
            case copyright
        }
    }
    
    @IBAction func APODTest(_ sender: Any) {
        performSegue(withIdentifier: "pickDate", sender: self)
    }
    
    
    @IBAction func favorites(_ sender: Any) {
        if ViewImage.image != nil {
            let image = ViewImage.image
            if let data = image!.pngData() {
               /* let filename = self.getDirectoryPath().appendingPathComponent(UUID().uuidString)
                try? data.write(to: filename)
               */
                var favoritePictures: [FavoritePictures] = []
                let picture = FavoritePictures(data: data)
                favoritePictures.append(picture)
                self.saveObject(fileName: "FavoriteList", object: favoritePictures)
                let steven = self.getObject(fileName: "FavoriteList")
                var junk = 10
            }
        }
    }
    
    func updateViews(photoInfo: photoInfo) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: photoInfo.url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.TextBox.text = photoInfo.title + photoInfo.description
                        self?.ViewImage.image = image
                        self?.stopIndicatingActivity()
                        
                        
                    }
                }
            }
        }
    }
    
    func dateChanged(date: Date) {
        //        convertData(date: date)
        requestApod(date: date)
    }
    
    
    func requestApod(date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        
        let urlString = "https://api.nasa.gov/planetary/apod?api_key=" + apiKey + "&date=" + dateFormatter.string(from: date)
        
        self.startIndicatingActivity()
        
        networkManager?.makeGetRequest(urlString: urlString) { completion in
            switch completion {
            case .success(let data):
                if let photoInfo = try? JSONDecoder().decode(photoInfo.self, from: data) {
                    self.updateViews(photoInfo: photoInfo)
                }
            case .failure( _):
                DispatchQueue.main.async {
                    self.stopIndicatingActivity()
                }
                print("oops")
            // oops
            }
        }
        
    }
    
    
    
    
    private func errorHandlerResp(data: Data?, response: URLResponse?, error: Error?) -> Bool {
        let httpResponse = response as! HTTPURLResponse
        let title = "NASA APOD Error"
        guard httpResponse.statusCode == 200 else {
            if httpResponse.statusCode == 429 {
                alertControl(title: title, message: "APIkey cannot currently handle any more responses...")
            } else { // key is dead
                alertControl(title: title, message: "Unexpected httpResponse code...")
            }
            return false
        }
        guard data != nil else {
            alertControl(title: title, message: "No Entry for this day, try another day.")
            return false
        }
        guard error == nil else {
            alertControl(title: title, message: "Unexpected Error.")
            return false
        }
        return true
    }
    
    func alertControl(title: String, message: String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkManager = NetworkManager()
        //        convertData(date: Date.init()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? datePickerViewController {
            vc.delegate = self
        }
    }
}

