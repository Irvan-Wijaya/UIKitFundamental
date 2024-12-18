import UIKit

class ScrollViewTutorialViewController: UIViewController {
    
    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let rectHeight: CGFloat = 200
    private let totalRect = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1 ..< totalRect {
            let rect = createRect()
            stackView.addArrangedSubview(rect)
        }
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        scrollView.contentSize.height = (rectHeight * CGFloat(totalRect)) + 64
    }
    
    private func createRect() -> UIView {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.layer.cornerRadius = 12
        return view
    }
}

extension ScrollViewTutorialViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Scroll view \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) { // stopping
        print("Decelerating")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("Dragging")
    }
}

#Preview{
    ScrollViewTutorialViewController()
}
