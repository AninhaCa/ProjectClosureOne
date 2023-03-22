//
//  RequestPizza.swift
//  ProjectClosureOne
//
//  Created by Ana Paula Silva de Sousa on 22/03/23.
//

import UIKit
import Alamofire

class RequestPizza: NSObject {

    func requestPizza(completion: @escaping (Pizza?) -> Void) {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ??
             Data())
            
            completion(pizza)
        }
    }
}
