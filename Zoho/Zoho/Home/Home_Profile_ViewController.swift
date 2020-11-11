//
//  Home_Profile_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/5/20.
//

import UIKit

class Home_Profile_ViewController: UIViewController {
    
//
//    let headerViewMaxHeight: CGFloat = 250
//    let headerViewMinHeight: CGFloat = 44 + UIApplication.shared.statusBarFrame.height
    
    let mainHeaderView : UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .profileHeaderBlue
        return view
        
    }()
    
    let profilePicView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 65.autoSized
        view.clipsToBounds = true
       // view.dropShadow(color: .profileShadowBlue, offSet: CGSize(width: -1, height: 2))
        view.layer.shadowColor = UIColor.profileShadowBlue.cgColor
        view.layer.shadowRadius = 3
        view.layer.shadowOffset = CGSize(width: -1, height: 1)

        return view
        
    }()
    
    let mainProfilePicture:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        imgv.image = UIImage(named: "profilePicture")
        imgv.clipsToBounds = true
        imgv.layer.masksToBounds = true
        
        return imgv
    }()
    
    let inOutLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "IN"
        lbl.textColor = .buttonGreen
        lbl.backgroundColor = .white
        lbl.font = UIFont.systemFont(ofSize: 10.autoSized, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        lbl.clipsToBounds = true
        
        return lbl
        
    }()
    
    let nameLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "Muhammad Awais Khalid"
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 20.autoSized, weight: .heavy)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        return lbl
    }()
    
    let emailLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "awais.khalid@o3interfaces.com"
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        return lbl
        
    }()
    
    
    let segmentControl :UISegmentedControl = {
       
        let sCntrl = UISegmentedControl(items: ["PROFILE", "TEAM"])
        sCntrl.translatesAutoresizingMaskIntoConstraints = false
        sCntrl.backgroundColor = .segmentControlGrey
        sCntrl.selectedSegmentTintColor = .clear
        sCntrl.layer.masksToBounds = true
        sCntrl.clipsToBounds = true
        sCntrl.selectedSegmentIndex = 0
        sCntrl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        sCntrl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        sCntrl.selectedSegmentIndex = 0
        let vc = HomeViewController()
        sCntrl.insertSubview(vc.greenThumbView, at: 0)
        sCntrl.addTarget(self, action: #selector(Home_Profile_ViewController.segmentValueChanged(_:)), for: .valueChanged)
        return sCntrl
        
    }()
    
    
    
    let segmentView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 25.autoSized
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        return view
    }()

    let scrollView:UIScrollView = {
       
        let scrlView = UIScrollView()
        scrlView.translatesAutoresizingMaskIntoConstraints = false
        scrlView.showsVerticalScrollIndicator = false
        return scrlView
        
    }()
    
    let mainContentView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    //MARK:- AboutView
    
    let AboutView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.label.text = "About"
        return view
        
    }()
    
    let techView:viewsForAbout = {
       
        let view = viewsForAbout()
        view.imageView.image = UIImage(named: "info")
        view.label.text = "Technical Lead iOS Specialist"
        return view
        
    }()
    
    let idView:viewsForAbout = {
       
        let view = viewsForAbout()
        view.imageView.image = UIImage(named: "name")
        view.label.text = "O3-051724"
        return view
        
    }()
    
    let careerView:viewsForAbout = {
       
        let view = viewsForAbout()
        view.imageView.image = UIImage(named: "group")
        view.label.text = "iOS Development"
        return view
        
    }()
    
    let numberView:viewsForAbout = {
       
        let view = viewsForAbout()
        view.imageView.image = UIImage(named: "phone")
        view.label.text = "0321-5235546"
        return view
        
    }()
    
    //MARK:- Availability
    
    let availabilityView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.label.text = "Availability"
        return view
    }()
    
    let shiftView:viewsForAvailability = {
       
        let view = viewsForAvailability()
        view.leftLabel.text = "Shift"
        view.rightLabel.text = "General"
        return view
    }()
    
    let timeView:viewsForAvailability = {
       
        let view = viewsForAvailability()
        view.leftLabel.text = "Time Zone"
        view.rightLabel.text = "PKT(GMT+05:00)"
        return view
    }()
    
    
    //MARK:- Reporting View
    
    let tagView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.label.text = "Tags"
        return view
    }()
    
    let tagImageView:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        imgv.image = UIImage(named: "tag")
        return imgv
        
    }()
    
    //MARK:- BasicInfo
    
    let basicInfoView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.label.text = "Basic Info"
        return view
        
    }()
    
    let infoTableView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.separatorStyle = .none
        return tbl
    }()
    
    //MARK:- Work
    
    let workView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.label.text = "Work"
        return view
        
    }()
    
    let workTableView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.separatorStyle = .none
        tbl.showsVerticalScrollIndicator = false
        return tbl
    }()
    
    //MARK:- Personal
    
    let personalView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.label.text = "Personal"
        return view
        
    }()
    
    let personalTableView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.separatorStyle = .none
        tbl.showsVerticalScrollIndicator = false
        return tbl
    }()
    
    //MARK:- Summary
    
    let summaryView:CustomViewForProfileSection = {
       
        let view = CustomViewForProfileSection()
        view.label.text = "Summary"
        return view
        
    }()
    
    let summaryTableView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.separatorStyle = .none
        tbl.showsVerticalScrollIndicator = false
        return tbl
    }()
    
    
    
    
    
    override func viewDidLayoutSubviews() {
        inOutLabel.layer.cornerRadius = 12.autoSized
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoTableView.delegate = self
        infoTableView.dataSource = self
        
        workTableView.delegate = self
        workTableView.dataSource = self
        
        personalTableView.delegate = self
        personalTableView.dataSource = self
        
        summaryTableView.delegate = self
        summaryTableView.dataSource = self
        
        scrollView.delegate = self
        
        view.addSubview(segmentView)
        segmentView.addSubview(segmentControl)
        segmentView.layer.zPosition = 1
        
        NSLayoutConstraint.activate([
            
            segmentView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            segmentView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -55),
            segmentView.widthAnchor.constraint(equalToConstant: 250),
            segmentView.heightAnchor.constraint(equalToConstant: 50),
            
            segmentControl.leadingAnchor.constraint(equalTo: segmentView.leadingAnchor),
            segmentControl.trailingAnchor.constraint(equalTo: segmentView.trailingAnchor),
            segmentControl.topAnchor.constraint(equalTo: segmentView.topAnchor),
            segmentControl.bottomAnchor.constraint(equalTo: segmentView.bottomAnchor)
        
        ])
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .BackgroundGrey
        setupNav()
        setupViews()
    }
    

    
    func setupNav() {
        
        let View = UIView()
        
        let imageView = UIImageView()
        if let imgBackArrow = UIImage(named: "white-cross") {
            imageView.image = imgBackArrow
        }
        
        View.addSubview(imageView)
        mainHeaderView.addSubview(View)
        
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        View.addGestureRecognizer(backTap)
        View.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //UploadIcon
        
        let uploadView = UIView()
        
        let uploadImageView = UIImageView()
        if let imgBackArrow = UIImage(named: "upload") {
            uploadImageView.image = imgBackArrow
        }
        
        uploadView.addSubview(uploadImageView)
        mainHeaderView.addSubview(uploadView)
        
        let uploadTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        uploadView.addGestureRecognizer(uploadTap)
        uploadView.translatesAutoresizingMaskIntoConstraints = false
        uploadImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            View.leadingAnchor.constraint(equalTo: mainHeaderView.leadingAnchor, constant: 20.autoSized),
            View.topAnchor.constraint(equalTo: mainHeaderView.topAnchor, constant: 50.autoSized),
            View.widthAnchor.constraint(equalToConstant: 24.autoSized),
            View.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            imageView.centerYAnchor.constraint(equalTo: View.centerYAnchor, constant: 0),
            imageView.centerXAnchor.constraint(equalTo: View.centerXAnchor, constant: 0),
            imageView.widthAnchor.constraint(equalToConstant: 24.autoSized),
            imageView.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            
            uploadView.trailingAnchor.constraint(equalTo: mainHeaderView.trailingAnchor, constant: -20.autoSized),
            uploadView.topAnchor.constraint(equalTo: mainHeaderView.topAnchor, constant: 50.autoSized),
            uploadView.widthAnchor.constraint(equalToConstant: 24.autoSized),
            uploadView.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            uploadImageView.centerYAnchor.constraint(equalTo: uploadView.centerYAnchor, constant: 0),
            uploadImageView.centerXAnchor.constraint(equalTo: uploadView.centerXAnchor, constant: 0),
            uploadImageView.widthAnchor.constraint(equalToConstant: 24.autoSized),
            uploadImageView.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            
        ])
        
        
    }
    
    @objc func backToMain() {
       
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @objc func segmentValueChanged(_ sender: AnyObject?){
        
        if segmentControl.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.7) {
                
            }
        }
        else {
            UIView.animate(withDuration: 0.7) {
                
            }
            
        }

    }
    
    func removeSubview(index:Int) {
        
    }
    
    
    func setupViews() {
        
        view.addSubview(mainHeaderView)
        profilePicView.addSubview(mainProfilePicture)
        mainHeaderView.addSubview(profilePicView)
        mainHeaderView.addSubview(inOutLabel)
        mainHeaderView.addSubview(nameLabel)
        mainHeaderView.addSubview(emailLabel)
        
        view.addSubview(scrollView)
        scrollView.addSubview(mainContentView)
        
        mainContentView.addSubview(AboutView)
        AboutView.addSubview(techView)
        AboutView.addSubview(idView)
        AboutView.addSubview(careerView)
        AboutView.addSubview(numberView)
        
        mainContentView.addSubview(availabilityView)
        availabilityView.addSubview(shiftView)
        availabilityView.addSubview(timeView)
        
        mainContentView.addSubview(tagView)
        tagView.addSubview(tagImageView)
        
        mainContentView.addSubview(basicInfoView)
        basicInfoView.addSubview(infoTableView)
        infoTableView.register(Home_Profile_BasicInfo_TableViewCell.self, forCellReuseIdentifier: "basicInfoCell")
        
        mainContentView.addSubview(workView)
        workView.addSubview(workTableView)
        workTableView.register(Home_Profile_BasicInfo_TableViewCell.self, forCellReuseIdentifier: "basicInfoCell")
        
        mainContentView.addSubview(personalView)
        personalView.addSubview(personalTableView)
        personalTableView.register(Home_Profile_BasicInfo_TableViewCell.self, forCellReuseIdentifier: "basicInfoCell")
        
        mainContentView.addSubview(summaryView)
        summaryView.addSubview(summaryTableView)
        summaryTableView.register(Home_Profile_BasicInfo_TableViewCell.self, forCellReuseIdentifier: "basicInfoCell")
        
        
        
        NSLayoutConstraint.activate([
        
            mainHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainHeaderView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mainHeaderView.heightAnchor.constraint(equalToConstant: 350.autoSized),
            
            profilePicView.centerXAnchor.constraint(equalTo: mainHeaderView.centerXAnchor, constant: 0),
            profilePicView.topAnchor.constraint(equalTo: mainHeaderView.topAnchor, constant: 85.autoSized),
            profilePicView.widthAnchor.constraint(equalToConstant: 130.autoSized),
            profilePicView.heightAnchor.constraint(equalToConstant: 130.autoSized),
            
            mainProfilePicture.centerXAnchor.constraint(equalTo: profilePicView.centerXAnchor, constant: 0),
            mainProfilePicture.centerYAnchor.constraint(equalTo: profilePicView.centerYAnchor, constant: 0),
            mainProfilePicture.widthAnchor.constraint(equalToConstant: 130.autoSized),
            mainProfilePicture.heightAnchor.constraint(equalToConstant: 130.autoSized),
            
            inOutLabel.centerXAnchor.constraint(equalTo: mainHeaderView.centerXAnchor, constant: 0),
            inOutLabel.topAnchor.constraint(equalTo: profilePicView.bottomAnchor, constant: 15.autoSized),
            inOutLabel.widthAnchor.constraint(equalToConstant: 50.autoSized),
            inOutLabel.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            nameLabel.centerXAnchor.constraint(equalTo: mainHeaderView.centerXAnchor, constant: 0),
            nameLabel.topAnchor.constraint(equalTo: inOutLabel.bottomAnchor, constant: 10.autoSized),
            
            emailLabel.centerXAnchor.constraint(equalTo: mainHeaderView.centerXAnchor, constant: 0),
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5.autoSized),
        
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.autoSized),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.autoSized),
            scrollView.topAnchor.constraint(equalTo: mainHeaderView.bottomAnchor, constant: 20.autoSized),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.autoSized),
            
            //mainContentView
            mainContentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            mainContentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor) ,
            mainContentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            mainContentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            
            AboutView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            AboutView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            AboutView.topAnchor.constraint(equalTo: mainContentView.topAnchor, constant: 20.autoSized),
            AboutView.heightAnchor.constraint(equalToConstant: 300.autoSized),
               
            techView.leadingAnchor.constraint(equalTo: AboutView.leadingAnchor, constant: 38.autoSized),
            techView.trailingAnchor.constraint(equalTo: AboutView.trailingAnchor, constant: -20.autoSized),
            techView.topAnchor.constraint(equalTo: AboutView.label.bottomAnchor, constant: 30.autoSized),
            techView.heightAnchor.constraint(equalToConstant: 32.autoSized),
            
            idView.leadingAnchor.constraint(equalTo: AboutView.leadingAnchor, constant: 38.autoSized),
            idView.trailingAnchor.constraint(equalTo: AboutView.trailingAnchor, constant: -20.autoSized),
            idView.topAnchor.constraint(equalTo: techView.label.bottomAnchor, constant: 25.autoSized),
            idView.heightAnchor.constraint(equalToConstant: 32.autoSized),
            
            careerView.leadingAnchor.constraint(equalTo: AboutView.leadingAnchor, constant: 38.autoSized),
            careerView.trailingAnchor.constraint(equalTo: AboutView.trailingAnchor, constant: -20.autoSized),
            careerView.topAnchor.constraint(equalTo: idView.label.bottomAnchor, constant: 25.autoSized),
            careerView.heightAnchor.constraint(equalToConstant: 32.autoSized),
            
            numberView.leadingAnchor.constraint(equalTo: AboutView.leadingAnchor, constant: 38.autoSized),
            numberView.trailingAnchor.constraint(equalTo: AboutView.trailingAnchor, constant: -20.autoSized),
            numberView.topAnchor.constraint(equalTo: careerView.label.bottomAnchor, constant: 25.autoSized),
            numberView.heightAnchor.constraint(equalToConstant: 32.autoSized),
            
            availabilityView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            availabilityView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            availabilityView.topAnchor.constraint(equalTo: AboutView.bottomAnchor, constant: 40.autoSized),
            availabilityView.heightAnchor.constraint(equalToConstant: 170.autoSized),
            
            shiftView.leadingAnchor.constraint(equalTo: availabilityView.leadingAnchor, constant: 32.autoSized),
            shiftView.trailingAnchor.constraint(equalTo: availabilityView.trailingAnchor, constant: -16.autoSized),
            shiftView.topAnchor.constraint(equalTo: availabilityView.label.bottomAnchor, constant: 30.autoSized),
            shiftView.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            timeView.leadingAnchor.constraint(equalTo: availabilityView.leadingAnchor, constant: 32.autoSized),
            timeView.trailingAnchor.constraint(equalTo: availabilityView.trailingAnchor, constant: -16.autoSized),
            timeView.topAnchor.constraint(equalTo: shiftView.bottomAnchor, constant: 15.autoSized),
            timeView.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            tagView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            tagView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            tagView.topAnchor.constraint(equalTo: availabilityView.bottomAnchor, constant: 40.autoSized),
            tagView.heightAnchor.constraint(equalToConstant: 200.autoSized),
            
            tagImageView.centerXAnchor.constraint(equalTo: tagView.centerXAnchor, constant: 0),
            tagImageView.topAnchor.constraint(equalTo: tagView.label.bottomAnchor, constant: 35.autoSized),
            tagImageView.widthAnchor.constraint(equalToConstant: 75.autoSized),
            tagImageView.heightAnchor.constraint(equalToConstant: 75.autoSized),
            
            basicInfoView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            basicInfoView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            basicInfoView.topAnchor.constraint(equalTo: tagView.bottomAnchor, constant: 40.autoSized),
            basicInfoView.heightAnchor.constraint(equalToConstant: 500.autoSized),
            
            infoTableView.leadingAnchor.constraint(equalTo: basicInfoView.leadingAnchor, constant: 0),
            infoTableView.trailingAnchor.constraint(equalTo: basicInfoView.trailingAnchor, constant: 0),
            infoTableView.topAnchor.constraint(equalTo: basicInfoView.label.bottomAnchor, constant: 10.autoSized),
            infoTableView.bottomAnchor.constraint(equalTo: basicInfoView.bottomAnchor, constant: -10.autoSized),
        
            workView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            workView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            workView.topAnchor.constraint(equalTo: basicInfoView.bottomAnchor, constant: 40.autoSized),
            workView.heightAnchor.constraint(equalToConstant: 600.autoSized),
            
            workTableView.leadingAnchor.constraint(equalTo: workView.leadingAnchor, constant: 0),
            workTableView.trailingAnchor.constraint(equalTo: workView.trailingAnchor, constant: 0),
            workTableView.topAnchor.constraint(equalTo: workView.label.bottomAnchor, constant: 10.autoSized),
            workTableView.bottomAnchor.constraint(equalTo: workView.bottomAnchor, constant: -10.autoSized),
            
            personalView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            personalView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            personalView.topAnchor.constraint(equalTo: workView.bottomAnchor, constant: 40.autoSized),
            personalView.heightAnchor.constraint(equalToConstant: 250.autoSized),
            
            
            personalTableView.leadingAnchor.constraint(equalTo: personalView.leadingAnchor, constant: 0),
            personalTableView.trailingAnchor.constraint(equalTo: personalView.trailingAnchor, constant: 0),
            personalTableView.topAnchor.constraint(equalTo: personalView.label.bottomAnchor, constant: 10.autoSized),
            personalTableView.bottomAnchor.constraint(equalTo: personalView.bottomAnchor, constant: -10.autoSized),
            
            summaryView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 16.autoSized),
            summaryView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -16.autoSized),
            summaryView.topAnchor.constraint(equalTo: workView.bottomAnchor, constant: 40.autoSized),
            summaryView.heightAnchor.constraint(equalToConstant: 200.autoSized),
            summaryView.bottomAnchor.constraint(equalTo: mainContentView.bottomAnchor, constant: -50.autoSized),
            
            summaryTableView.leadingAnchor.constraint(equalTo: summaryView.leadingAnchor, constant: 0),
            summaryTableView.trailingAnchor.constraint(equalTo: summaryView.trailingAnchor, constant: 0),
            summaryTableView.topAnchor.constraint(equalTo: summaryView.label.bottomAnchor, constant: 10.autoSized),
            summaryTableView.bottomAnchor.constraint(equalTo: summaryView.bottomAnchor, constant: -10.autoSized),
                            
            
            
        
        ])
        
    }
}

extension Home_Profile_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == infoTableView {
                
            return BasicInfo.title.count
        }
        else if tableView == workTableView {
            return Work.title.count
        }
        else if tableView == personalTableView {
            return Personal.title.count
        }
        else {
            return Summary.title.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicInfoCell") as! Home_Profile_BasicInfo_TableViewCell
        cell.textLabel?.textColor = .lightGray
        
        if tableView == infoTableView {
            cell.textLabel?.text = BasicInfo.title[indexPath.row]
            cell.rightLabel.text = BasicInfo.detail[indexPath.row]
            if indexPath.row == 2 {
                cell.imageV.image = UIImage(named: "profilePicture")
            }
        }
        else if tableView == workTableView {
            cell.textLabel?.text = Work.title[indexPath.row]
            cell.rightLabel.text = Work.detail[indexPath.row]
          
        }
        else if tableView == personalTableView {
            cell.textLabel?.text = Personal.title[indexPath.row]
            cell.rightLabel.text = Personal.detail[indexPath.row]
            
        }
        else {
            cell.textLabel?.text = Summary.title[indexPath.row]
            cell.rightLabel.text = Summary.detail[indexPath.row]
            
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if tableView == infoTableView {
            if indexPath.row == 2 {
                return 54
            }
        }
                return 44
    }
    
}

//
//extension Home_Profile_ViewController:UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//
//
//
//        let y: CGFloat = scrollView.contentOffset.y
//
//
//            let newHeaderViewHeight: CGFloat = 350 - y
//            if newHeaderViewHeight > headerViewMaxHeight {
//                mainHeaderView.heightAnchor.constraint(equalToConstant: headerViewMaxHeight).isActive = true
//
//            } else if newHeaderViewHeight < headerViewMinHeight {
//
//                mainHeaderView.heightAnchor.constraint(equalToConstant: headerViewMinHeight).isActive = true
//            } else {
//                    mainHeaderView.heightAnchor.constraint(equalToConstant: newHeaderViewHeight).isActive = true
//                    scrollView.contentOffset.y = 0 // block scroll view
//
//                //mainHeaderView.layoutIfNeeded()
//        }
//
//    }
//}
