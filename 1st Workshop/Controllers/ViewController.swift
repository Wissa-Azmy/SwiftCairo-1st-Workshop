//
//  ViewController.swift
//  1st Workshop
//
//  Created by Wissa Azmy on 10/12/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timelines = [Timeline]()
    
    @IBOutlet weak var timelineTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addTableView()
        retrieveTimelineData()
    }
    
    private func addTableView() {
        
    }

    
    private func retrieveTimelineData() {
        
        let timelineUrl = getUrl(of: IBMApi.timelinePath)

        APIService.fetchGenericData(fromUrl: timelineUrl) { (response: TimelineResp) in
                self.timelines = response
                DispatchQueue.main.async {
//                    self.timelineTable.reloadData()
                }
        }
    }
    
    
    private func getUrl(of url: String) -> URL {
        var urlComponent = URLComponents()
        urlComponent.scheme = IBMApi.scheme
        urlComponent.host = IBMApi.host
        urlComponent.path = url
        
        return urlComponent.url!
    }

}



extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timelines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = timelineTable.dequeueReusableCell(withIdentifier: "TimelineCell", for: indexPath)
        
        return cell
    }
    
    
}
