//
//  ServicesViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/8/20.
//

import UIKit
import SystemConfiguration.CaptiveNetwork

class ServicesViewController: CustomClassWithNavBar {

    let searchingView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20.autoSized
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.backgroundColor = .segmentControlGrey
        return view
        
    }()
    
    let textField:UITextField = {
       
        let txtfld = UITextField()
        txtfld.translatesAutoresizingMaskIntoConstraints = false
        txtfld.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .regular)
        txtfld.attributedPlaceholder = NSAttributedString(string: "Search Services...",attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        return txtfld
    }()
    
    let layout:UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        return layout
    }()
    
    let collectionView:UICollectionView = {
       
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 162.autoSized, height: 162.autoSized)
        layout.scrollDirection = .vertical
        
        var collectionview = UICollectionView(frame: CGRect(x: 16.autoSized, y: 160.autoSized, width: 343.autoSized, height: 550.autoSized), collectionViewLayout: layout)
        collectionview.register(ServicesCollectionViewCell.self, forCellWithReuseIdentifier: "servicesCell")
        collectionview.backgroundColor = .BackgroundGrey
        collectionview.isPagingEnabled = true
        collectionview.showsVerticalScrollIndicator = false
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        return collectionview
        
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .BackgroundGrey
        navigationItem.title = "Services"
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
//        tabBar.selectionIndicatorImage = UIImage().getImageWithColorPosition(color: .red, size: CGSize(width: tabBar.frame.width/CGFloat(tabBar.items!.count), height: 2 ), lineSize: CGSize(width:(self.tabBarController?.tabBar.frame.size.width)!, height:2))
        
        
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func setupViews() {
     
        view.addSubview(searchingView)
        searchingView.addSubview(textField)
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            collectionView.topAnchor.constraint(equalTo: searchingView.bottomAnchor, constant: 16.autoSized),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.autoSized),
        
            searchingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            searchingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            searchingView.topAnchor.constraint(equalTo: view.topAnchor, constant: 93.autoSized),
            searchingView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            textField.leadingAnchor.constraint(equalTo: searchingView.leadingAnchor, constant: 20.autoSized),
            textField.trailingAnchor.constraint(equalTo: searchingView.trailingAnchor),
            textField.topAnchor.constraint(equalTo: searchingView.topAnchor),
            textField.bottomAnchor.constraint(equalTo: searchingView.bottomAnchor)
        
        ])
        
    }

}


extension ServicesViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "servicesCell", for: indexPath) as! ServicesCollectionViewCell
        
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 15.autoSized
        cell.bottomLabel.text = Services.label[indexPath.row]
        cell.imgView.image = UIImage(named: "service\(indexPath.row)")
        cell.layer.shadowColor = UIColor.veryLightGrey.cgColor
        cell.layer.shadowOffset = CGSize(width: -1.autoSized, height: 6.autoSized)
        cell.layer.shadowRadius = 2.autoSized
        cell.layer.shadowOpacity = 0.2
        cell.layer.masksToBounds = false
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10.autoSized
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20.autoSized
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            
            let vc = Service_LeaveTracker_ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
        case 1:
            let vc = Service_TimeTracker_ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            print("\(indexPath.row)")
        case 3:
            print("\(indexPath.row)")
        case 4:
            print("\(indexPath.row)")
        case 5:
            print("\(indexPath.row)")
        case 6:
            print("\(indexPath.row)")
        case 7:
            print("\(indexPath.row)")
        case 8:
            print("\(indexPath.row)")
        case 9:
            print("\(indexPath.row)")
            
        default:
            print("Default")
        }
    }
    
}
