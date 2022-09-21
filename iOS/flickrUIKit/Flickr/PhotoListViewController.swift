import Foundation
import UIKit

class ResultsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

class PhotoListViewController: UIViewController, UISearchResultsUpdating {
    private let tableView = UITableView()
    private let searchController = UISearchController(searchResultsController: ResultsViewController())
    let apiClient: APIClient = APIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        navigationItem.searchController = searchController
        view = tableView
        searchController.searchBar.placeholder = "Search photos"
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.searchResultsUpdater = self
        tableView.register(PhotoCell.self, forCellReuseIdentifier: PhotoCell.reuseID)
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        // TODO update tableview with photos from using the APIClient to fetch `PhotoList`
        //apiClient.fetch(query: "cat")
        // print(searchController.searchBar.text!)
        guard let text = searchController.searchBar.text else {
            return
        }
//        let vc = searchController.searchResultsController as? resultsVC
//        vc?.view.backgroundColor = .yellow
        
        print(text)
    }
}
