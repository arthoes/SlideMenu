//
//  HomeViewController.swift
//  SlideMenu
//
//  Created by S2 on 9.04.22.
//

import Foundation
import UIKit

protocol HomeViewControllerDelegate: AnyObject {
    func didBarButtonTap()
}

class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(onBarButtonTap))
    }
    @objc private func onBarButtonTap() {
        delegate?.didBarButtonTap()
    }

}
