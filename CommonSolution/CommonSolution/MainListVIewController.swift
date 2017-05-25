//
//  MainListVIewController.swift
//  CommonSolution
//
//  Created by 0oneo on 19/05/2017.
//  Copyright © 2017 0oneo. All rights reserved.
//

import UIKit

class MainListVIewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var sections: [MainListSection]!
    @IBOutlet private var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configSectionData()
    }
    
    //MARK: - tableView DataSource & Delegate methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let listSetion = sections[section]
        return listSetion.cellTitleRoutes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTitleRoute =
    }
    
    private func configSectionData() {
        let titleRoutes = CellTitleRoute(title: "badge", route: .badge)
        let section1 = MainListSection(title: "layout", cellTitleRoutes: [titleRoutes])
        
        sections = [section1]
    }
    
    private func cellItem(forSection section: Int, row: Int) -> CellTitleRoute {
        return sections[section].cellTitleRoutes[row]
    }
}
