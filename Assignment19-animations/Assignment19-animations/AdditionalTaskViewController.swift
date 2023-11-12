
import UIKit

final class AdditionalTaskViewController: UIViewController {

    //MARK: - Properties
    private let academyTextView = UITextView()
    
    private let gradient = CAGradientLayer()
    
    private let gradientChange = CABasicAnimation(keyPath: "colors")
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupGradientUI()
        setupAcademyTextView()
        animationSpin()
        changeGradientColors()
    }
    
    //MARK: - Animations
    private func animationSpin() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.academyTextView.transform = self.academyTextView.transform.rotated(by: CGFloat.pi)
        }, completion: nil)
    }
    
    private func changeGradientColors() {
        UIView.animate(withDuration: 3, animations: gradientAnimation, completion: nil)
    }
    
    private func gradientAnimation() {
        gradientChange.duration = 3
        gradientChange.toValue = [UIColor.yellow.cgColor, UIColor.green.cgColor]
        gradientChange.fillMode = .forwards
        gradientChange.isRemovedOnCompletion = false
        gradientChange.autoreverses = true
        gradientChange.repeatCount = Float.infinity
        gradient.add(gradientChange, forKey: "colorChange")
    }
    
    //MARK: - SetupUI
    private func setupAcademyTextView() {
        view.addSubview(academyTextView)
        
        academyTextView.translatesAutoresizingMaskIntoConstraints = false
        academyTextView.text = "TBC IT Academy"
        academyTextView.textColor = .black
        academyTextView.backgroundColor = UIColor.white.withAlphaComponent(0)
        academyTextView.font = UIFont.systemFont(ofSize: 25)
        academyTextView.isEditable = false
        academyTextView.textAlignment = .center
        academyTextView.alpha = 1
        
        academyTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        academyTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        academyTextView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        academyTextView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    private func setupGradientUI() {
        view.layer.addSublayer(gradient)
        
        gradient.frame = view.bounds
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:1, y:1)
    }
}

