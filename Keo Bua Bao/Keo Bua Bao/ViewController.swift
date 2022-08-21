

import UIKit

class ViewController: UIViewController {


    let vc_Player = ViewController_player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    @IBOutlet weak var main_Image: UIImageView!
    
    @IBOutlet weak var main_VectorImage: UIImageView!
    
    func setUp () {
        let btn_Start = UIButton.init(frame: CGRect(x: 48, y: 600, width: 300, height: 100))
        btn_Start.backgroundColor = .yellow
        btn_Start.setTitle("Start", for: .normal)
        btn_Start.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn_Start.setTitleColor(.black, for: .normal)
        btn_Start.layer.cornerRadius = 0.1 * btn_Start.bounds.size.width
        btn_Start.layer.shadowColor = UIColor.black.cgColor
        btn_Start.layer.shadowOffset = CGSize(width: 5, height: 5)
        btn_Start.layer.shadowRadius = 5
        btn_Start.layer.shadowOpacity = 1.0
        btn_Start.addTarget(self, action: #selector(btn_StartClicked), for: .touchUpInside)
        self.view.addSubview(btn_Start)
    }
    
    @objc func btn_StartClicked (_ sender: UIButton) {
        self.present(vc_Player, animated: true, completion: nil)
    }
}

