//
//  APIService.swift
//  1st Workshop
//
//  Created by Wissa Azmy on 10/12/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import Foundation
import Alamofire

class APIService {
    
    
    static func fetchGenericData <T: Decodable> (fromUrl url: URL, completion: @escaping (T) -> ()) {
        
        Alamofire.request(url).responseJSON { (response) in
            
            switch response.result {
            case .success(let value):
                guard let data = value as? [Dictionary<String, AnyObject>] else {return}
                
                print("\n\nResponse Object: \n\(data)\n\n")
            case .failure(let error):
                print("\n\nNetwork Request Error: \n\(error)\n\n")
            }
        }
    }
    
}
