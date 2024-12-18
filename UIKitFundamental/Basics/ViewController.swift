import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var primaryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func greetUser (_ name: String){
        greetingLabel.text = "Hello, \(name)"
    }
    
    @IBAction func primaryButtonTapped(_ sender: Any) {
        greetUser("Journey to be an iOS Developer!")
        view.backgroundColor = .green
    }
    
}
