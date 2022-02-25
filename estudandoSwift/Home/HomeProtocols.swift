import UIKit

protocol HomeViewType where Self: UIView {
    func show(viewModel: HomeViewModel)
}

protocol HomePresenterType {
    func loadInfo()
}

protocol HomeControllerType: AnyObject {
    func show(viewModel: HomeViewModel)
}
