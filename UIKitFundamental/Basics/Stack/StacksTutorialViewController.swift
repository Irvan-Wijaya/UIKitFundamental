import UIKit

class StacksTutorialViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rec1 = rect()
        rec1.backgroundColor = .systemRed
        
        let rec2 = rect()
        rec2.backgroundColor = .systemGreen
        
        let rec3 = rect()
        rec3.backgroundColor = .systemBlue
        
        let rec4 = rect()
        rec4.backgroundColor = .systemCyan
        
        let rec5 = rect()
        rec5.backgroundColor = .systemMint
        
        stackView.addArrangedSubview(rec1)
        stackView.addArrangedSubview(rec2)
        stackView.addArrangedSubview(rec3)
        stackView.addArrangedSubview(rec4)
        stackView.addArrangedSubview(rec5)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func rect () -> UIView {
        let rectangle = UIView()
        rectangle.layer.cornerRadius = 12
        rectangle.widthAnchor.constraint(equalToConstant: 200).isActive = true
        rectangle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return rectangle
    }
}

#Preview{
    StacksTutorialViewController()
}
