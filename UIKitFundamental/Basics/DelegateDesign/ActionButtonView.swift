import UIKit

protocol ActionButtonDelegate: AnyObject{
    func onPrimaryTap()
    func onSecondaryTap()
}

class ActionButtonView: UIView {
    
    weak var delegate: ActionButtonDelegate?
    
    private var primaryActionButton: UIButton = {
        let primaryButton = UIButton()
        primaryButton.setTitle("Primary Action", for: .normal)
        primaryButton.backgroundColor = .systemBlue
        primaryButton.layer.cornerRadius = 12
        primaryButton.translatesAutoresizingMaskIntoConstraints = false
        primaryButton.setTitleColor(.white, for: .normal)
        primaryButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return primaryButton
    }()
    
    private var secondaryActionButton: UIButton = {
        let secondaryButton = UIButton()
        secondaryButton.setTitle("Secondary Action", for: .normal)
        secondaryButton.setTitleColor(.systemBlue, for: .normal)
        secondaryButton.translatesAutoresizingMaskIntoConstraints = false
        return secondaryButton
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        
        addSubview(primaryActionButton)
        primaryActionButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        primaryActionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        primaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        primaryActionButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addSubview(secondaryActionButton)
        secondaryActionButton.topAnchor.constraint(equalTo: primaryActionButton.bottomAnchor, constant: 16).isActive = true
        secondaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        primaryActionButton.addTarget(self, action: #selector(handlePrimaryButton), for: .touchUpInside)
        secondaryActionButton.addTarget(self, action: #selector(handleSecondaryButton), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handlePrimaryButton(){
        print("DEBUG: PRIMARY BUTTON TAPPED")
        delegate?.onPrimaryTap()
    }
    
    @objc func handleSecondaryButton(){
        print("DEBUG: SECONDARY BUTTON TAPPED")
        delegate?.onSecondaryTap()
    }
}
