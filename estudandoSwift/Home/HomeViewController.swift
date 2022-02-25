import UIKit

final class HomeViewController: UIViewController {
    private var contentView: HomeViewType
    private let presenter: HomePresenterType
    
    init(contentView: HomeViewType = HomeView(),
         presenter: HomePresenterType) {
        self.contentView = contentView
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.loadInfo()
    }
}

extension HomeViewController: HomeControllerType {
    func show(viewModel: HomeViewModel) {
        contentView.show(viewModel: viewModel)
    }
}
