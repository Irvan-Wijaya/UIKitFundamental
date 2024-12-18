import UIKit

class ButtonsTutorialViewController: UIViewController {
    
    /*MARK: lazy: dont render this view until self is available, or till u have to
     
     properti yang hanya akan diinisialisasi saat pertama kali diakses, sehingga menghemat memori untuk proses yang berat atau jarang digunakan. Gunakan lazy ketika inisialisasi properti membutuhkan resource besar atau memerlukan informasi lain yang belum tersedia saat objek dibuat.
     */
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Name", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20 , weight: .semibold)
//      button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onShowNameButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Irvan Wijaya"
        label.font = .systemFont(ofSize: 20 , weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        showNameButton.addTarget(self, action: #selector(onShowNameButtonTapped), for: .touchUpInside)
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: showNameButton.topAnchor, constant: -16).isActive = true
    }
    
    @objc func onShowNameButtonTapped() {
        nameLabel.isHidden.toggle()
        
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showNameButton.setTitle(title, for: .normal)
    }
    
}

#Preview{
    ButtonsTutorialViewController()
}
