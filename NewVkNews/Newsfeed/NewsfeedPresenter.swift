//
//  NewsfeedPresenter.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 10/08/2020.
//  Copyright (c) 2020 Emil Mubarakov. All rights reserved.
//

import UIKit

protocol NewsfeedPresentationLogic {
  func presentData(response: Newsfeed.Model.Response.ResponseType)
}

class NewsfeedPresenter: NewsfeedPresentationLogic {
  weak var viewController: NewsfeedDisplayLogic?
  
  func presentData(response: Newsfeed.Model.Response.ResponseType) {
    
    switch response {
    case .some:
        print(".some Response")
    case .presentNewsfeed:
        print(".present Response")
        viewController?.displayData(viewModel: .displayNewsfeed)
    }
  }
  
}
