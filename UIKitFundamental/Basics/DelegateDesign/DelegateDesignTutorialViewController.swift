import UIKit

class DelegateDesignTutorialViewController: UIViewController {
    
    private var actionButtonView = ActionButtonView()
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        actionButtonView.delegate = self

        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        
        textLabel.text = "Primary Button Tapped!"
    }
}

extension DelegateDesignTutorialViewController: ActionButtonDelegate{
    func onPrimaryTap() {
        print("Primary Button Tapped on View Contoller")
        textLabel.isHidden = false
    }
    
    func onSecondaryTap() {
        print("Secondary Button Tapped on View Contoller")
        textLabel.isHidden = true
    }
    
    
}
