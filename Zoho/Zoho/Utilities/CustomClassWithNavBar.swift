




import UIKit

class CustomClassWithNavBar:UIViewController {
    
    let profilePictureView:UIImageView = {
       
        let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: 32.autoSized, height: 32.autoSized))
        imageview.image = UIImage(named: "profile-pic")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.cornerRadius = 16.autoSized
        imageview.layer.masksToBounds = true
        imageview.layer.borderColor = UIColor.black.cgColor
        imageview.layer.borderWidth = 0.5
        
        return imageview
        
    }()
    
    let searchView:UIImageView = {
       
        let imageview = UIImageView(frame: CGRect(x: 0.autoSized, y: 2.autoSized, width: 28.autoSized, height: 28.autoSized))
        imageview.image = UIImage(named: "search")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.masksToBounds = true

        return imageview
        
    }()

    
    let bellView: UIImageView = {
       
        let imageview = UIImageView(frame: CGRect(x: -5.autoSized, y: 0, width: 24.autoSized, height: 24.autoSized))
        imageview.image = UIImage(named: "bell")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.masksToBounds = true
        
        return imageview
        
    }()
    
    
    
    override func viewDidLoad() {
        
        view.backgroundColor = .BackgroundGrey
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        let profileBarBtn = UIBarButtonItem(customView: profilePictureView)
        let searchBarBtn = UIBarButtonItem(customView: searchView)
        let bellBarBtn = UIBarButtonItem(customView: bellView)
        let space = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        space.width = 30.autoSized
        self.navigationItem.leftBarButtonItem = profileBarBtn
        self.navigationItem.rightBarButtonItems = [bellBarBtn,space,searchBarBtn]

    }
    
}
