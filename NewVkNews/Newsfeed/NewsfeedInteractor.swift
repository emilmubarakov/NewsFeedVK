//
//  NewsfeedInteractor.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 10/08/2020.
//  Copyright (c) 2020 Emil Mubarakov. All rights reserved.
//

import UIKit

protocol NewsfeedBusinessLogic {
  func makeRequest(request: Newsfeed.Model.Request.RequestType)
}

class NewsfeedInteractor: NewsfeedBusinessLogic {

  var presenter: NewsfeedPresentationLogic?
  var service: NewsfeedService?
  
  func makeRequest(request: Newsfeed.Model.Request.RequestType) {
    if service == nil {
      service = NewsfeedService()
    }
    switch request {
    case .some:
        print(".some Interactor")
    case .getFeed:
        print(".getFeed")
        presenter?.presentData(response: .presentNewsfeed)
    }
  }
  
}
