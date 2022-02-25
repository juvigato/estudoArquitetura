import UIKit
final class HomeView: UIView {
    private let homeImageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .blue
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .systemPink
        buildHierarchy()
        addConstraints()
    }
 
    private func buildHierarchy() {
        addSubview(homeImageView)
    }
    
    private func addConstraints() {
        let homeConstraints: [NSLayoutConstraint] = [
            homeImageView.topAnchor.constraint(equalTo: topAnchor),
            homeImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            homeImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            homeImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(homeConstraints)
    }
}

extension HomeView: HomeViewType {
    func show(viewModel: HomeViewModel) {
        homeImageView.image = viewModel.image
    }
}
