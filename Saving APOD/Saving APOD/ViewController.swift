//
//  ViewController.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 9/14/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit
import CoreData

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

class ViewController: UIViewController, DatePickerViewController {
    var networkManager: NetworkManager?
    var pictures: [NSManagedObject] = []
    
    
    
    @IBOutlet weak var LoadSpinner: UIActivityIndicatorView!
    @IBOutlet weak var ViewImage: UIImageView!
    @IBOutlet weak var TextBox: UITextView!
    
    

    
    @IBAction func APODTest(_ sender: Any) {
        performSegue(withIdentifier: "pickDate", sender: self)
    }
    
// favorites button check for favorites saved or create new if missing
    @IBAction func favorites(_ sender: Any) {
        if ViewImage.image != nil {
            let image = ViewImage.image
            if let data = image!.pngData() {
                let picture = FavoritePictures(data: data)

                if var favoritePictures = self.getObject(fileName: "FavoriteList") as? [FavoritePictures] {
                    favoritePictures.append(picture)
                    self.saveObject(fileName: "FavoriteList", object: favoritePictures)
                    alertControl(title: "Success", message: "Picture Saved")
                } else {
                    var newFavoritePictures: [FavoritePictures] = []
                    newFavoritePictures.append(picture)
                    self.saveObject(fileName: "FavoriteList", object: newFavoritePictures)
                    alertControl(title: "Success", message: "Picture Saved")
                }
            
            }
        }
    }
// function to update image and text
    func updateViews(photoInfo: PhotoInfoModel) {
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
        requestApod(date: date)
    }
    
// APOD function
    func requestApod(date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        
        self.startIndicatingActivity()
        
        networkManager?.makeApodRequest(date: dateFormatter.string(from: date)) { completion in
            switch completion {
            case .success(let data):
                if let photoInfo = try? JSONDecoder().decode(PhotoInfoModel.self, from: data) {
                    self.updateViews(photoInfo: photoInfo)
                }
            case .failure( _):
                DispatchQueue.main.async {
                    self.stopIndicatingActivity()
                    self.alertControl(title: "Error", message: "Failed to sync")
                }
                print("oops")
            }
        }
        
    }
    
    
    
// error catch for data catch
    private func errorHandlerResp(data: Data?, response: URLResponse?, error: Error?) -> Bool {
        let httpResponse = response as! HTTPURLResponse
        let title = "NASA APOD Error"
        guard httpResponse.statusCode == 200 else {
            if httpResponse.statusCode == 429 {
                self.alertControl(title: title, message: "APIkey cannot currently handle any more responses...")
            } else {
                self.alertControl(title: title, message: "Unexpected httpResponse code...")
            }
            return false
        }
        guard data != nil else {
            self.alertControl(title: title, message: "No Entry for this day, try another day.")
            return false
        }
        guard error == nil else {
            self.alertControl(title: title, message: "Unexpected Error.")
            return false
        }
        return true
    }
  //  alert function
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkManager = NetworkManager()
        requestApod(date: Date())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // segue for datePickerViewCOntroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? datePickerViewController {
            vc.delegate = self
        }
    }
}

