
import UIKit

class ShapeTutorialViewController: UIViewController {
    
    private var rect: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemCyan
        return view
    }()
    
    private var circle: UIView = {
        let circleView = UIView()
        circleView.layer.cornerRadius = 150 / 2
        circleView.backgroundColor = .systemRed
        circleView.translatesAutoresizingMaskIntoConstraints = false
        return circleView
    }()
    
    private var bigRectangle: UIView = {
        let bigRect = UIView()
        bigRect.layer.cornerRadius = 12
        bigRect.backgroundColor = .darkGray
        bigRect.translatesAutoresizingMaskIntoConstraints = false
        return bigRect
    }()
    
    private var box: UIView = {
        let squarePan = UIView()
        squarePan.backgroundColor = .black
        squarePan.translatesAutoresizingMaskIntoConstraints = false
        squarePan.layer.cornerRadius = 8
        return squarePan
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        MARK: ZStack dengan declared based on order (jadi sesuai urutan)
        view.addSubview(bigRectangle)
        bigRectangle.widthAnchor.constraint(equalToConstant: 400).isActive = true
        bigRectangle.heightAnchor.constraint(equalToConstant: 400).isActive = true
        bigRectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        bigRectangle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.widthAnchor.constraint(equalToConstant: 150).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 150).isActive = true
        rect.rightAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(circle)
        circle.widthAnchor.constraint(equalToConstant: 150).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 150).isActive = true
        circle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        circle.leftAnchor.constraint(equalTo: rect.rightAnchor, constant: 16).isActive = true
        
        view.addSubview(box)
        box.widthAnchor.constraint(equalToConstant: 300).isActive = true
        box.heightAnchor.constraint(equalToConstant: 20).isActive = true
        box.centerYAnchor.constraint(equalTo: rect.bottomAnchor, constant: 64).isActive = true
        box.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
// MARK: Jadi Ada 2 cara untuk ZStack dalam UIKit (INSERTSUBVIEW)
//        view.insertSubview(bigRectangle, at: 0)
//        view.bringSubviewToFront(bigRectangle) -> to front
//        view.sendSubviewToBack(bigRectangle) -> to back
//        bigRectangle.widthAnchor.constraint(equalToConstant: 400).isActive = true
//        bigRectangle.heightAnchor.constraint(equalToConstant: 400).isActive = true
//        bigRectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        bigRectangle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview{
    ShapeTutorialViewController()
}
