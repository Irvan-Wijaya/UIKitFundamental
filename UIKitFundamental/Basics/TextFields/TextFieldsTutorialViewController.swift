
import UIKit

class TextFieldsTutorialViewController: UIViewController {
    
    private var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
//      tf.keyboardType = .numberPad -> based on requirements!
        tf.returnKeyType = .search // this for submit button, u can change it based on requirements!
//      tf.returnKeyType = .done
//      tf.returnKeyType = .continue
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)

        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
        // view.frame.width - 64 -> is for padding both side 32px
    }
    
    @objc func onEditingChanged(_ sender: UITextField){
        print("User Type: \(sender.text ?? "NO Input")")
    }
}

extension TextFieldsTutorialViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // for next to other textField, when clicked done/submit
        print("Button Pressed...")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Did begin editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("End editing")
    }
}

#Preview{
    TextFieldsTutorialViewController()
}
