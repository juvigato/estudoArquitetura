import UIKit

final class HomePresenter {
    weak var controller: HomeControllerType?
}

extension HomePresenter: HomePresenterType {
    func loadInfo() {
        guard let image = UIImage(named: "sophiePicture") else { return }
        let viewModel = HomeViewModel(name: "Juju",
                                      image: image)
        controller?.show(viewModel: viewModel)
    }
}



