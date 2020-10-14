//
//  API.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 9/23/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import UIKit

class NetworkManager {
    
    enum NetworkError: Error {
            case badUrl
            case serverError
            case alreadyExists
            case canceledRequest
        }
    
    func makeGetRequest(urlString: String, completion: @escaping (Result<Data, NetworkError>) -> Void){
        
        
        if let url = URL(string: urlString){
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                guard let data = data, let response = response as? HTTPURLResponse else {
                    if let error = error as NSError?, error.domain == NSURLErrorDomain && error.code == NSURLErrorCancelled {
                        completion(.failure(.canceledRequest))
                        return
                    }
                    completion(.failure(.serverError))
                    return
                }
                
                guard (200 ... 299) ~= response.statusCode else {
                    completion(.failure(.serverError))
                    return
                }
                // If we made it here, you have received data back. The (data) means you are goign to pass that back when this function gets called. So we need to call this function from your other view controller where you want to use it. You'll pass in the urlString with the api key attached
                completion(.success(data))
            }.resume()
        }
    }
    
}
