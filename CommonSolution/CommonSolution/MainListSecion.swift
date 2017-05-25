//
//  MainListSecion.swift
//  CommonSolution
//
//  Created by 0oneo on 19/05/2017.
//  Copyright © 2017 0oneo. All rights reserved.
//

import Foundation


struct MainListSection {
    let title: String
    let cellTitleRoutes: [CellTitleRoute]
}

struct CellTitleRoute {
    let title: String
    let route: Route
}

enum Route {
    case badge
}
