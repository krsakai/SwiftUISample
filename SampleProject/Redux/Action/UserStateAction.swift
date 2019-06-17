//
//  UserStateAction.swift
//  SampleProject
//
//  Created by 酒井 邦也 on 2019/06/17.
//  Copyright © 2019 酒井 邦也. All rights reserved.
//

import Foundation

enum UserStateAction: Action {
    case SetFirstName(String)
    case SetLastName(String)
    case ClearProfile
}
