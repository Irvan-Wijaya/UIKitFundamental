
import UIKit

class ImageTutorialViewController: UIViewController {
    
    private var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = .systemCyan
        imageView.image = UIImage(systemName: "paperplane")
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

#Preview{
    ImageTutorialViewController()
}
