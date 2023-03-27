//
//  ViewController.swift
//  Lightweight Network Layer
//
//  Created by Yamoses on 27/03/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NetworkEngine.request(endpoint: FlickrEndpoint.getSearchResults(searchText: "iOS", page: 1)) { (result: Result<FlickrResponse, Error>) in
            switch result {
            case .success(let respone):
                print("response: ", respone)
            case .failure(let error):
                print(error)
            }
        }
    }


}

