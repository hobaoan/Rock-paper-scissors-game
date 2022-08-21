
import UIKit

class ViewController_player: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp_vcPlayer()
        
    }

    func setUp_vcPlayer () {
        
        //get width and height in screen
        let getWidth = UIScreen.main.bounds.size.width
        let getHeight = UIScreen.main.bounds.size.height
        
        //set Image
        let Image = UIImageView(frame: CGRect(x: 0, y: 0, width: getWidth, height: getHeight))
        Image.image = UIImage(named: "mainImage")
        self.view.addSubview(Image)
        
        //create button
        let btn_Play = UIButton(frame: CGRect(x: 95 , y: 550, width: 200, height: 100))
        btn_Play.backgroundColor = .yellow
        btn_Play.setTitle("Play", for: .normal)
        btn_Play.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn_Play.setTitleColor(.black, for: .normal)
        btn_Play.layer.cornerRadius = 0.1 * btn_Play.bounds.size.width
        btn_Play.layer.shadowColor = UIColor.black.cgColor
        btn_Play.layer.shadowOffset = CGSize(width: 5, height: 5)
        btn_Play.layer.shadowRadius = 5
        btn_Play.layer.shadowOpacity = 1.0
        btn_Play.addTarget(self, action: #selector(btn_PlayClicked), for: .touchUpInside)
        self.view.addSubview(btn_Play)
        
        //create image player1
        let imagePlayer1 = UIImageView(frame: CGRect(x: -10 , y: 30, width: 230, height:230))
        imagePlayer1.image = UIImage(named: "Dog1")
        self.view.addSubview(imagePlayer1)
        
        //create image player2
        let imagePlayer2 = UIImageView(frame: CGRect(x: -15 , y: 280, width: 260, height:260))
        imagePlayer2.image = UIImage(named: "Dog2")
        self.view.addSubview(imagePlayer2)
    }
    
    let p1_Weapon = UIImageView(frame: CGRect(x: 220, y: 70, width: 130, height: 130))
    let p2_Weapon = UIImageView(frame: CGRect(x: 220, y: 340, width: 130, height: 100))
    
    @objc func btn_PlayClicked (_ sender: UIButton) {
        
        //create weapon's player1
        self.view.addSubview(p1_Weapon)
        
        //create weapon's player2
        self.view.addSubview(p2_Weapon)
        
        var random_WeaponPlayer1 = Int.random(in: 1...3)
        if random_WeaponPlayer1 == 1 {
            p1_Weapon.image = UIImage(named: "KeoImage")
        }
        else if random_WeaponPlayer1 == 2 {
            p1_Weapon.image = UIImage(named: "BuaImage")
        }
        else {
            p1_Weapon.image = UIImage(named: "BaoImage")
        }
        
        var random_WeaponPlayer2 = Int.random(in: 1...3)
        if random_WeaponPlayer2 == 1 {
            p2_Weapon.image = UIImage(named: "KeoImage")
        }
        else if random_WeaponPlayer2 == 2 {
            p2_Weapon.image = UIImage(named: "BuaImage")
        }
        else {
            p2_Weapon.image = UIImage(named: "BaoImage")
        }
    }

}
