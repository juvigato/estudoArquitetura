//
//  ViewController.swift
//  estudandoSwift
//
//  Created by Juliana Pavan on 18/02/22.
//

import UIKit

class ViewController: UIViewController {
    private var contentView: UIView
    
    init(contentView: UIView = UIView()) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        contentView.backgroundColor = .red
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
