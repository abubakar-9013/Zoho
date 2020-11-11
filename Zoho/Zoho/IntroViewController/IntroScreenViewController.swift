//
//  IntroScreenViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 10/29/20.
//

import UIKit
import GoogleSignIn
import Firebase


class IntroScreenViewController: UIViewController {
    
    let collectionView:UICollectionView = {
       
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 375.autoSized, height: 480.autoSized)
        layout.scrollDirection = .horizontal
        
        var collectionview = UICollectionView(frame: CGRect(x: 0, y: 50.autoSized, width: 375.autoSized, height: 480.autoSized), collectionViewLayout: layout)
        collectionview.register(IntroScreenCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        collectionview.backgroundColor = .BackgroundGrey
        collectionview.isPagingEnabled = true
        collectionview.showsHorizontalScrollIndicator = false
        return collectionview
        
    }()
    
    
    
    let pageControl:UIPageControl = {
       
        let pgCntrl = UIPageControl()
        pgCntrl.translatesAutoresizingMaskIntoConstraints = false
        pgCntrl.numberOfPages = 5
        pgCntrl.currentPageIndicatorTintColor = .black
        pgCntrl.pageIndicatorTintColor = .veryLightGrey
        pgCntrl.currentPage = 0
        
        
        
        return pgCntrl
        
    }()
    
    
    
    
    let signinWithGoogle_Button:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign in with Google", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel!.font = UIFont(name: "Core Sans M 55 Medium", size: 15.autoSized)
        btn.layer.borderWidth = 1.autoSized
        btn.layer.borderColor = UIColor.lightGray.cgColor
        btn.backgroundColor = .white
        btn.imageView?.frame = CGRect(x: 0, y: 0, width: 24.autoSized, height: 24.autoSized)
        btn.imageEdgeInsets = UIEdgeInsets(top: 13, left: -5.autoSized, bottom: 14, right: 0)
       btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -145, bottom: 0, right: 0)
          btn.setImage(UIImage(named: "google"), for: .normal)
       btn.imageView?.contentMode = .scaleAspectFit
        btn.addTarget(self, action: #selector(googleButtonClicked(sender:)), for: .touchUpInside)

       return btn

    }()

  
    let signinWithApple_Button:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign in with Apple", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel!.font = UIFont(name: "Core Sans M 55 Medium", size: 15.autoSized)
        btn.layer.borderWidth = 1.autoSized
        btn.layer.borderColor = UIColor.lightGray.cgColor
        btn.backgroundColor = .white
        btn.imageView?.frame = CGRect(x: 0, y: 0, width: 24.autoSized, height: 24.autoSized)
        btn.imageEdgeInsets = UIEdgeInsets(top: 13, left: -130.autoSized, bottom: 16, right: 0)
        btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -405, bottom: 0, right: 0)
        btn.setImage(UIImage(named: "Apple"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
       
        
       return btn
        
    }()
    
    
    let bottomLabel:UILabel = {
        let lbl = UILabel()
        lbl.text = "Don't have an account?"
        lbl.textColor = .black
        lbl.font = UIFont(name: "Core Sans M 55 Medium", size: 14)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    let signupButton:UIButton = {
       
        let btn = UIButton()
        btn.setTitle("SIGN UP", for: .normal)
        btn.setTitleColor(.signupGreenColor, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel!.font = UIFont(name: "Core Sans M 55 Medium", size: 15.autoSized)
        return btn
        
    }()
    
    //MARK:- IBActions
    
    @objc func googleButtonClicked(sender:UIButton) {
        GIDSignIn.sharedInstance()?.signIn()
    }
 

    override func viewDidLayoutSubviews() {
        
        signinWithGoogle_Button.layer.cornerRadius = 8.autoSized
        signinWithApple_Button.layer.cornerRadius = 8.autoSized
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance()?.presentingViewController = self

       
        
        collectionView.delegate = self
        collectionView.dataSource = self
        view.backgroundColor = .BackgroundGrey
        setupViews()
        
    }
    
    func setupViews() {
        
        view.addSubview(signinWithGoogle_Button)
        view.addSubview(signinWithApple_Button)
        view.addSubview(bottomLabel)
        view.addSubview(signupButton)
        view.addSubview(collectionView)
        view.insertSubview(pageControl, at: 0)
        view.bringSubviewToFront(pageControl)
        
        
        
        NSLayoutConstraint.activate([
        
            //Zoho Button
            signinWithGoogle_Button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            signinWithGoogle_Button.widthAnchor.constraint(equalToConstant: 302.autoSized),
            signinWithGoogle_Button.heightAnchor.constraint(equalToConstant: 45.autoSized),
            signinWithGoogle_Button.bottomAnchor.constraint(equalTo: signinWithApple_Button.topAnchor, constant: -15.autoSized),
            
            
            //Apple Button
            signinWithApple_Button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            signinWithApple_Button.widthAnchor.constraint(equalToConstant: 302.autoSized),
            signinWithApple_Button.heightAnchor.constraint(equalToConstant: 45.autoSized),
            signinWithApple_Button.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor, constant: -28.autoSized),
            
            
            //Bottom Label
            bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -34.autoSized),
            bottomLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80.autoSized),
            
            
            //Signup Button
            signupButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -27.autoSized),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75.autoSized),
            
            
            //PageControl
            pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            pageControl.bottomAnchor.constraint(equalTo: signinWithGoogle_Button.topAnchor, constant: -20)
        
        ])
        
        
    }
    
    


}


extension IntroScreenViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! IntroScreenCollectionViewCell
        cell.imgView.image = UIImage(named: "\(Images.imageArray[indexPath.row])")
        cell.topLabel.text = TitlesAndDetails.titles[indexPath.row]
        cell.topLabel.setTextSpacingAndHeightBy(value: 0, lineHeight: 2)
        cell.detailLabel.text = TitlesAndDetails.Details[indexPath.row]
        cell.detailLabel.setTextSpacingAndHeightBy(value: 0, lineHeight: 7)
        cell.backgroundColor = .BackgroundGrey
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


extension IntroScreenViewController:UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        return nil
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let visibleRect = CGRect(origin: self.collectionView.contentOffset, size: self.collectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        if let visibleIndexPath = self.collectionView.indexPathForItem(at: visiblePoint) {
        self.pageControl.currentPage = visibleIndexPath.row
        
        
    }
}
    
   
}

