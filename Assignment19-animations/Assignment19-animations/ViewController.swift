
import UIKit

final class ViewController: UIViewController {

    //MARK: - Properties
    private let academyTextView = UITextView()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupAcademyTextView()
        animationBounce()
        animationFade()
    }
    
    //MARK: - Animations
    private func animationBounce() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.academyTextView.frame.origin.y -= 50
        }, completion: nil)
    }
    
    private func animationFade() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.academyTextView.alpha = 1
        }, completion: nil)
    }
    
    //MARK: - SetupUI
    private func setupAcademyTextView() {
        view.addSubview(academyTextView)
        
        academyTextView.translatesAutoresizingMaskIntoConstraints = false
        academyTextView.text = "TBC IT Academy"
        academyTextView.textColor = .cyan
        academyTextView.font = UIFont.systemFont(ofSize: 25)
        academyTextView.isEditable = false
        academyTextView.textAlignment = .center
        academyTextView.alpha = 0
        
        academyTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        academyTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        academyTextView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        academyTextView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

