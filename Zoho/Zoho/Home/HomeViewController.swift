//
//  HomeViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 10/31/20.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    var isCheckedIn = false
    var timer = Timer()
    var timer2 = Timer()
    var timer3 = Timer()
    
    let profilePictureView:UIView = {
       
        let containView = UIView(frame: CGRect(x: 0, y: 0, width: 32.autoSized, height: 32.autoSized))
        let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: 32.autoSized, height: 32.autoSized))
        imageview.image = UIImage(named: "profilePicture")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.cornerRadius = 16.autoSized
        imageview.layer.masksToBounds = true
        containView.addSubview(imageview)
        return containView
        
    }()
    
    let searchView:UIView = {
       
        let containView = UIView(frame: CGRect(x: 0, y: 0, width: 24.autoSized, height: 24.autoSized))
        let imageview = UIImageView(frame: CGRect(x: -20.autoSized, y: 2.autoSized, width: 24.autoSized, height: 24.autoSized))
        imageview.image = UIImage(named: "search")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.masksToBounds = true
        containView.addSubview(imageview)
        return containView
        
    }()
    
    let bellView:UIView = {
       
        let containView = UIView(frame: CGRect(x: 0, y: 0, width: 24.autoSized, height: 24.autoSized))
        let imageview = UIImageView(frame: CGRect(x: -5.autoSized, y: 0, width: 24.autoSized, height: 24.autoSized))
        imageview.image = UIImage(named: "bell")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.masksToBounds = true
        containView.addSubview(imageview)
        return containView
        
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
    
    //MARK:- FirstView
    
    let homeLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "Home"
        lbl.font = UIFont.systemFont(ofSize: 34.autoSized, weight: .bold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .left
        return lbl
        
    }()
    
    let updateView:UIView = {
        let view = UIView()
        view.backgroundColor = .LightWhite
        view.translatesAutoresizingMaskIntoConstraints = false
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        
        return view
    }()
    
    let updateLabel:UILabel = {
        
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Update"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .bold)
        lbl.textAlignment = .left
        return lbl
        
    }()
    
    let healthLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "health status"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .light)
        lbl.textColor = .darkGray
        return lbl
        
    }()
    
    let doctorImageView:UIImageView = {
        
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.contentMode = .scaleAspectFill
        imgV.image = UIImage(named: "doctor")
        return imgV
    }()
    
    
    //MARK:- SecondView
    
    let checkoutView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    let leftCloudImageView:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "leftCloud")
        return imgv
        
    }()
    
    let sunImageView:UIImageView = {
        
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "sun")
        return imgv
        
    }()
    
    let rightCloudImageView:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "rightCloud")
        return imgv
        
    }()
    
    let minuteView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBrown
        return view
        
    }()
    
    let minuteLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "00"
        lbl.font = UIFont.systemFont(ofSize: 24.autoSized, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    let hourView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBrown
        return view
        
    }()
    
    let hourLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "00"
        lbl.font = UIFont.systemFont(ofSize: 24.autoSized, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    let secondsView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBrown
        return view
        
    }()
    
    let secondsLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "00"
        lbl.font = UIFont.systemFont(ofSize: 24.autoSized, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    let HRSLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "HRS"
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    let progress:UIProgressView = {
       
        let progress = UIProgressView()
        progress.progressViewStyle = .bar
        progress.trackTintColor = .progressViewBackgroundColor
        progress.tintColor = .green
        progress.translatesAutoresizingMaskIntoConstraints = false
        progress.setProgress(0.2, animated: true)
        return progress
        
    }()
    
    let generalTimingLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "GENERAL 09:00 AM TO 06:00 PM"
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    let checkoutButton:UIButton = {
       
        let btn = UIButton()
        btn.setTitle("CHECK-IN", for: .normal)
        btn.dropShadow(color: .red, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 2.autoSized), radius: 2.autoSized, scale: true)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .bold)
        btn.backgroundColor = .customRed
        btn.addTarget(self, action: #selector(startTimer), for: .touchUpInside)
        return btn
        
    }()
    
    
    //MARK:- ThirdView
    
    let announcementView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    let announcementIconView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBackgroundBlue
        return view
        
    }()
    
    let announcementImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "announcement")
        return imgv
    }()
    
    let announcementLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Announcements"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let announcementNoRecordLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "No records found"
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .light)
        lbl.textColor = .darkGray
        return lbl
        
    }()

    
    
    //MARK:- FourthView
    
    let favouritesView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    let favouriteIconView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBackgroundBlue
        return view
        
    }()
    
    let favouriteImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "favourites")
        return imgv
    }()
    
    let favouriteLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Favorites"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let favouriteNoRecordLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "No records found"
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .light)
        lbl.textColor = .darkGray
        return lbl
        
    }()
    
    
    //MARK:- FifthView
    
    let birthdayBuddiesView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    
    let birthdayBuddiesIconView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBackgroundBlue
        return view
        
    }()
    
    let birthdayBuddiesImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "birthday")
        return imgv
    }()
    
    let birthdayBuddiesLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Birthday Buddies"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let birthdayBuddiesNoRecordLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "No records found"
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .light)
        lbl.textColor = .darkGray
        return lbl
        
    }()
    
    //MARK:- SixthView
    
    let leaveReportView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    let leaveReportIconView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBackgroundBlue
        return view
        
    }()
    
    let leaveReportImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "leave")
        return imgv
    }()
    
    let leaveReportLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Leave Report"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let leaveReportPlusButton:UIButton = {
       
        let btn = UIButton()
        btn.setImage(UIImage(named: "plus"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let leaveReportTableView: UITableView = {
       
        let tblView = UITableView()
        tblView.translatesAutoresizingMaskIntoConstraints = false
        tblView.separatorStyle = .none
        tblView.showsVerticalScrollIndicator = false
        tblView.backgroundColor = .LightWhite
        return tblView
        
    }()
    
    let viewMoreBtn:UIButton = {
       
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("VIEW 1 MORE", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .heavy)
        btn.backgroundColor = .LightBackgroundBlue
        btn.setTitleColor(.black, for: .normal)
        return btn
        
    }()
    
    
    //MARK:- SeventhView
    
    let upcomingHolidaysView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    let upcomingHolidaysIconView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBackgroundBlue
        return view
        
    }()
    
    let upcomingHolidaysImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "holidays")
        return imgv
    }()
    
    let upcomingHolidaysLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Upcoming Holidays"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let upcomingHolidaysNoRecordLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "No records found"
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .light)
        lbl.textColor = .darkGray
        return lbl
        
    }()

    
    
    //MARK:- EightView
    
    let departmentMembersView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightWhite
        view.dropShadow(color: .veryLightGrey, opacity: 0.5, offSet: CGSize(width: -1.autoSized, height: 1.autoSized), radius: 3.autoSized, scale: true)
        return view
        
    }()
    
    let departmentMembersIconView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .LightBackgroundBlue
        return view
        
    }()
    
    let departmentMembersImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        imgv.image = UIImage(named: "department")
        imgv.layer.masksToBounds = true
        return imgv
    }()
    
    let departmentMembersLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Department Members"
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let departmentTableView:UITableView = {
       
        let tblView = UITableView()
        tblView.translatesAutoresizingMaskIntoConstraints = false
        tblView.separatorStyle = .none
        tblView.showsVerticalScrollIndicator = false
        tblView.backgroundColor = .LightWhite
        return tblView
        
    }()
    
    let departmentViewMoreBtn:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("VIEW 1 MORE", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .heavy)
        btn.backgroundColor = .LightBackgroundBlue
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(viewMore), for: .touchUpInside)
        return btn
        
    }()
    
    
    
    
    override func viewDidLayoutSubviews() {
        updateView.layer.cornerRadius = 10.autoSized
        checkoutView.layer.cornerRadius = 12.autoSized
        announcementView.layer.cornerRadius = 12.autoSized
        favouritesView.layer.cornerRadius = 12.autoSized
        birthdayBuddiesView.layer.cornerRadius = 12.autoSized
        leaveReportView.layer.cornerRadius = 12.autoSized
        upcomingHolidaysView.layer.cornerRadius = 12.autoSized
        departmentMembersView.layer.cornerRadius = 12.autoSized
        
        favouriteIconView.layer.cornerRadius = 20.autoSized
        birthdayBuddiesIconView.layer.cornerRadius = 20.autoSized
        announcementIconView.layer.cornerRadius = 20.autoSized
        upcomingHolidaysIconView.layer.cornerRadius = 20.autoSized
        departmentMembersIconView.layer.cornerRadius = 20.autoSized
        leaveReportIconView.layer.cornerRadius = 20.autoSized
        leaveReportPlusButton.layer.cornerRadius = 14.autoSized
        hourView.layer.cornerRadius = 5.autoSized
        minuteView.layer.cornerRadius = 5.autoSized
        secondsView.layer.cornerRadius = 5.autoSized
        progress.layer.cornerRadius = 5.autoSized
        checkoutButton.layer.cornerRadius = 20.autoSized
        viewMoreBtn.layer.cornerRadius = 18.autoSized
        departmentViewMoreBtn.layer.cornerRadius = 20.autoSized
        
       
        
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        view.backgroundColor = .BackgroundGrey
        
        let profileBarBtn = UIBarButtonItem(customView: profilePictureView)
        let searchBarBtn = UIBarButtonItem(customView: searchView)
        let bellBarBtn = UIBarButtonItem(customView: bellView)
        self.navigationItem.leftBarButtonItem = profileBarBtn
        self.navigationItem.rightBarButtonItems = [bellBarBtn,searchBarBtn]
        
        setupHomeVC()
        
            
    }
    
    func moveRight(view: UIView) {
        view.center.x += 15.autoSized
        }
        
        func moveLeft(view: UIView) {
            view.center.x -= 15.autoSized
        }
    
    func LeftToRightAnimation(View:UIView) {
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (timer) in
            UIView.animate(withDuration: 1, animations: {
                self.moveRight(view: View)
            }) { (finished) in
                if finished {
                    UIView.animate(withDuration: 1, animations: {
                        self.moveLeft(view: View)
                    })
                }
            }
        }
    }
    
    func RightToLeftAnimation(View:UIView) {
        
        timer3 = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (timer) in
            UIView.animate(withDuration: 1, animations: {
                self.moveLeft(view: View)
            }) { (finished) in
                if finished {
                    UIView.animate(withDuration: 1, animations: {
                        self.moveRight(view: View)
                    })
                }
            }
        }
    }
    
    //MARK:- @Objc Functions
    
    
    @objc func startTimer() {
        
        
        let date = NSDate()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm:ss"
        let currentTime = timeFormatter.string(from: date as Date)
        
        let dayFormatter = DateFormatter()
        dayFormatter.dateFormat = "MMMM-dd-yyyy"
        let currentDay = dayFormatter.string(from: date as Date)
        
        if isCheckedIn == true {
            isCheckedIn = false
            sunImageView.stopRotation()
            Firebase.Firestore.firestore().collection("Attendance").document("UserID").setData([currentDay : [ "Check-Out-Time": currentTime, "Date": currentDay]
            ], merge: true)
            checkoutButton.setTitle("CHECK-IN", for: .normal)
            timer.invalidate()
            timer2.invalidate()
            timer3.invalidate()
            
        }
        else {
            isCheckedIn = true
            checkoutButton.setTitle("CHECK-OUT", for: .normal)
            LeftToRightAnimation(View:leftCloudImageView)
            RightToLeftAnimation(View: rightCloudImageView)
            //Add CheckIn time to Firestore
            Firebase.Firestore.firestore().collection("Attendance").document("UserID").setData([currentDay : [ "Check-In-Time": currentTime]
            ])
            
            var secondCount = 0
            var minuteCount = 0
            var hourCount = 0
            
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
                [weak self] (timer) in
                    secondCount += 1
                    self!.sunImageView.startRotation()
                    self!.secondsLabel.pushTransition(1)
                    self!.secondsLabel.text = String(format: "%02d", secondCount)
                
                 if secondCount == 60 {
                    secondCount = 0
                    minuteCount += 1
                    self?.minuteLabel.text = String(format: "%02d", minuteCount)
                    self?.minuteLabel.pushTransition(1)
                    self!.secondsLabel.text = String(format: "%02d", secondCount)
                if minuteCount == 60 {
                    minuteCount = 0
                    hourCount += 1
                    self?.minuteLabel.text = String(format: "%02d", minuteCount)
                    self?.hourLabel.pushTransition(1)
                    self?.minuteLabel.text = String(format: "%02d", hourCount)
                }
            }
        }
    }
}
    
    @objc func viewMore() {
        let vc = Home_DepartmentMembers_ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    func setupHomeVC() {
        
        
        
        view.addSubview(scrollView)
        scrollView.addSubview(mainContentView)
        
        mainContentView.addSubview(homeLabel)
        mainContentView.addSubview(updateView)
        mainContentView.addSubview(checkoutView)
        mainContentView.addSubview(announcementView)
        mainContentView.addSubview(favouritesView)
        mainContentView.addSubview(birthdayBuddiesView)
        mainContentView.addSubview(leaveReportView)
        mainContentView.addSubview(upcomingHolidaysView)
        mainContentView.addSubview(departmentMembersView)
        
        
        updateView.addSubview(updateLabel)
        updateView.addSubview(healthLabel)
        updateView.addSubview(doctorImageView)
        
        checkoutView.addSubview(leftCloudImageView)
        checkoutView.addSubview(sunImageView)
        checkoutView.addSubview(rightCloudImageView)
        checkoutView.addSubview(minuteView)
        checkoutView.addSubview(secondsView)
        checkoutView.addSubview(hourView)
        minuteView.addSubview(minuteLabel)
        secondsView.addSubview(secondsLabel)
        hourView.addSubview(hourLabel)
        checkoutView.addSubview(HRSLabel)
        checkoutView.addSubview(progress)
        checkoutView.addSubview(generalTimingLabel)
        checkoutView.addSubview(checkoutButton)
        
        favouritesView.addSubview(favouriteIconView)
        favouritesView.addSubview(favouriteLabel)
        favouritesView.addSubview(favouriteNoRecordLabel)
        favouriteIconView.addSubview(favouriteImageView)
        
        birthdayBuddiesView.addSubview(birthdayBuddiesIconView)
        birthdayBuddiesView.addSubview(birthdayBuddiesLabel)
        birthdayBuddiesView.addSubview(birthdayBuddiesNoRecordLabel)
        birthdayBuddiesIconView.addSubview(birthdayBuddiesImageView)
        
        announcementView.addSubview(announcementIconView)
        announcementView.addSubview(announcementLabel)
        announcementView.addSubview(announcementNoRecordLabel)
        announcementIconView.addSubview(announcementImageView)
        
        upcomingHolidaysView.addSubview(upcomingHolidaysIconView)
        upcomingHolidaysView.addSubview(upcomingHolidaysLabel)
        upcomingHolidaysView.addSubview(upcomingHolidaysNoRecordLabel)
        upcomingHolidaysIconView.addSubview(upcomingHolidaysImageView)
        
        departmentMembersView.addSubview(departmentMembersIconView)
        departmentMembersView.addSubview(departmentMembersLabel)
        departmentMembersIconView.addSubview(departmentMembersImageView)
        departmentMembersView.addSubview(departmentTableView)
        departmentMembersView.addSubview(departmentViewMoreBtn)
        departmentTableView.register(Home_Department_TableViewCell.self, forCellReuseIdentifier: "DepartmentCell")
        departmentTableView.delegate = self
        departmentTableView.dataSource = self
        
        leaveReportView.addSubview(leaveReportIconView)
        leaveReportView.addSubview(leaveReportLabel)
        leaveReportView.addSubview(leaveReportPlusButton)
        leaveReportIconView.addSubview(leaveReportImageView)
        leaveReportView.addSubview(leaveReportTableView)
        leaveReportView.addSubview(viewMoreBtn)
        leaveReportTableView.register(Home_LeaveReport_TableViewCell.self, forCellReuseIdentifier: "LeaveReportCell")
        leaveReportTableView.delegate = self
        leaveReportTableView.dataSource = self
        
        
        
        NSLayoutConstraint.activate([
        
            
            //ScrollView
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 88.autoSized),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.autoSized),
            
            //mainContentView
            mainContentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            mainContentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor) ,
            mainContentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            mainContentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            
            
            
            //HomeLabel
            homeLabel.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            homeLabel.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            homeLabel.topAnchor.constraint(equalTo: mainContentView.topAnchor, constant: 0),
            
            //MARK:- FirstView Constraints
            
    
            //updateView
            updateView.leadingAnchor.constraint(equalTo: self.mainContentView.leadingAnchor, constant: 0),
            updateView.trailingAnchor.constraint(equalTo: self.mainContentView.trailingAnchor, constant: 0),
            updateView.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 20.autoSized),
            updateView.heightAnchor.constraint(equalToConstant: 90.autoSized),
            
            //UpdateLabel
            updateLabel.leadingAnchor.constraint(equalTo: updateView.leadingAnchor, constant: 20.autoSized),
            updateLabel.trailingAnchor.constraint(equalTo: updateView.trailingAnchor, constant: -16.autoSized),
            updateLabel.topAnchor.constraint(equalTo: updateView.topAnchor, constant: 25.autoSized),
            
            //HealthLabel
            healthLabel.leadingAnchor.constraint(equalTo: updateView.leadingAnchor, constant: 20.autoSized),
            healthLabel.trailingAnchor.constraint(equalTo: updateView.trailingAnchor, constant: -16.autoSized),
            healthLabel.topAnchor.constraint(equalTo: updateView.topAnchor, constant: 50.autoSized),
            
            //DoctorImageView
            doctorImageView.trailingAnchor.constraint(equalTo: updateView.trailingAnchor, constant: -75.autoSized),
            doctorImageView.topAnchor.constraint(equalTo: updateView.topAnchor, constant: 0),
            doctorImageView.bottomAnchor.constraint(equalTo: updateView.bottomAnchor, constant: 0),
            doctorImageView.widthAnchor.constraint(equalToConstant: 30.autoSized),
            
            
            //MARK:- SecondView Constraints
            
            checkoutView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            checkoutView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            checkoutView.topAnchor.constraint(equalTo: updateView.bottomAnchor, constant: 28.autoSized),
            checkoutView.heightAnchor.constraint(equalToConstant: 330.autoSized),
            
            //LeftCloud ImageView
            leftCloudImageView.leadingAnchor.constraint(equalTo: checkoutView.leadingAnchor, constant: 60.autoSized),
            leftCloudImageView.topAnchor.constraint(equalTo: checkoutView.topAnchor, constant: 40.autoSized),
            leftCloudImageView.widthAnchor.constraint(equalToConstant: 55.autoSized),
            leftCloudImageView.heightAnchor.constraint(equalToConstant: 55.autoSized),
            
            //SunImageView
            sunImageView.centerXAnchor.constraint(equalTo: checkoutView.centerXAnchor, constant: 0),
            sunImageView.topAnchor.constraint(equalTo: checkoutView.topAnchor, constant: 35.autoSized),
            sunImageView.widthAnchor.constraint(equalToConstant: 65.autoSized),
            sunImageView.heightAnchor.constraint(equalToConstant: 65.autoSized),
            
            //RightCloud ImageView
            rightCloudImageView.trailingAnchor.constraint(equalTo: checkoutView.trailingAnchor, constant: -65.autoSized),
            rightCloudImageView.topAnchor.constraint(equalTo: checkoutView.topAnchor, constant: 30.autoSized),
            rightCloudImageView.widthAnchor.constraint(equalToConstant: 45.autoSized),
            rightCloudImageView.heightAnchor.constraint(equalToConstant: 45.autoSized),
            
            //Minute View
            minuteView.centerXAnchor.constraint(equalTo: checkoutView.centerXAnchor, constant: 0),
            minuteView.topAnchor.constraint(equalTo: sunImageView.bottomAnchor, constant: 20.autoSized),
            minuteView.widthAnchor.constraint(equalToConstant: 60.autoSized),
            minuteView.heightAnchor.constraint(equalToConstant: 60.autoSized),
            
            //Minute Label
            minuteLabel.centerXAnchor.constraint(equalTo: minuteView.centerXAnchor),
            minuteLabel.centerYAnchor.constraint(equalTo: minuteView.centerYAnchor),
            
            //Hour View
            hourView.trailingAnchor.constraint(equalTo: minuteView.leadingAnchor, constant: -12.autoSized),
            hourView.centerYAnchor.constraint(equalTo: minuteView.centerYAnchor, constant: 0),
            hourView.widthAnchor.constraint(equalToConstant: 60.autoSized),
            hourView.heightAnchor.constraint(equalToConstant: 60.autoSized),
            
            //Hour Label
            hourLabel.centerXAnchor.constraint(equalTo: hourView.centerXAnchor),
            hourLabel.centerYAnchor.constraint(equalTo: hourView.centerYAnchor),
            
            //Second View
            secondsView.leadingAnchor.constraint(equalTo: minuteView.trailingAnchor, constant: 12.autoSized),
            secondsView.centerYAnchor.constraint(equalTo: minuteView.centerYAnchor, constant: 0),
            secondsView.widthAnchor.constraint(equalToConstant: 60.autoSized),
            secondsView.heightAnchor.constraint(equalToConstant: 60.autoSized),
            
            //Second Label
            secondsLabel.centerXAnchor.constraint(equalTo: secondsView.centerXAnchor),
            secondsLabel.centerYAnchor.constraint(equalTo: secondsView.centerYAnchor),
            
            //HRS Label
            HRSLabel.leadingAnchor.constraint(equalTo: secondsView.trailingAnchor, constant: 8.autoSized),
            HRSLabel.centerYAnchor.constraint(equalTo: secondsView.centerYAnchor),
            
            //Progress Label
            progress.centerXAnchor.constraint(equalTo: checkoutView.centerXAnchor),
            progress.topAnchor.constraint(equalTo: minuteView.bottomAnchor, constant: 30.autoSized),
            progress.widthAnchor.constraint(equalToConstant: 280.autoSized),
            progress.heightAnchor.constraint(equalToConstant: 7.autoSized),
            
            //GeneralTimings Label
            generalTimingLabel.centerXAnchor.constraint(equalTo: checkoutView.centerXAnchor, constant: 0),
            generalTimingLabel.topAnchor.constraint(equalTo: progress.bottomAnchor, constant: 14.autoSized),
            
            //Checkout Button
            checkoutButton.centerXAnchor.constraint(equalTo: checkoutView.centerXAnchor, constant: 0),
            checkoutButton.topAnchor.constraint(equalTo: generalTimingLabel.bottomAnchor, constant: 20.autoSized),
            checkoutButton.widthAnchor.constraint(equalToConstant: 120.autoSized),
            checkoutButton.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //MARK:- ThirdView Constraints
        
            announcementView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            announcementView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            announcementView.topAnchor.constraint(equalTo: checkoutView.bottomAnchor, constant: 28.autoSized),
            announcementView.heightAnchor.constraint(equalToConstant: 170.autoSized),
            
            //AnnouncementsIcon View
            announcementIconView.leadingAnchor.constraint(equalTo: announcementView.leadingAnchor, constant: 30.autoSized),
            announcementIconView.topAnchor.constraint(equalTo: announcementView.topAnchor, constant: 30.autoSized),
            announcementIconView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            announcementIconView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //AnnouncementsImageView
            announcementImageView.centerXAnchor.constraint(equalTo: announcementIconView.centerXAnchor, constant: 0),
            announcementImageView.centerYAnchor.constraint(equalTo: announcementIconView.centerYAnchor, constant: 0),
            announcementImageView.widthAnchor.constraint(equalToConstant: 28.autoSized),
            announcementImageView.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            
            //Announcements Label
            announcementLabel.leadingAnchor.constraint(equalTo: announcementIconView.trailingAnchor, constant: 20.autoSized),
            announcementLabel.centerYAnchor.constraint(equalTo: announcementIconView.centerYAnchor, constant: 0),
            announcementLabel.trailingAnchor.constraint(equalTo: announcementView.trailingAnchor, constant: -16.autoSized),
            
            //AnnouncementsNoRecord Label
            announcementNoRecordLabel.centerXAnchor.constraint(equalTo: announcementView.centerXAnchor, constant: 0),
            announcementNoRecordLabel.bottomAnchor.constraint(equalTo: announcementView.bottomAnchor, constant: -45.autoSized),
            
        
            //MARK:- FourthView Constraints
            
            favouritesView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            favouritesView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            favouritesView.topAnchor.constraint(equalTo: announcementView.bottomAnchor, constant: 28.autoSized),
            favouritesView.heightAnchor.constraint(equalToConstant: 170.autoSized),
            
            
            //FavouritesIconView
            favouriteIconView.leadingAnchor.constraint(equalTo: favouritesView.leadingAnchor, constant: 30.autoSized),
            favouriteIconView.topAnchor.constraint(equalTo: favouritesView.topAnchor, constant: 30.autoSized),
            favouriteIconView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            favouriteIconView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //FavouritesImageView
            favouriteImageView.centerXAnchor.constraint(equalTo: favouriteIconView.centerXAnchor, constant: 0),
            favouriteImageView.centerYAnchor.constraint(equalTo: favouriteIconView.centerYAnchor, constant: 0),
            favouriteImageView.widthAnchor.constraint(equalToConstant: 28.autoSized),
            favouriteImageView.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            
            //Favorites Label
            favouriteLabel.leadingAnchor.constraint(equalTo: favouriteIconView.trailingAnchor, constant: 20.autoSized),
            favouriteLabel.centerYAnchor.constraint(equalTo: favouriteIconView.centerYAnchor, constant: 0),
            favouriteLabel.trailingAnchor.constraint(equalTo: favouritesView.trailingAnchor, constant: -16.autoSized),
            
            //FavouriteNoRecord Label
            favouriteNoRecordLabel.centerXAnchor.constraint(equalTo: favouritesView.centerXAnchor, constant: 0),
            favouriteNoRecordLabel.bottomAnchor.constraint(equalTo: favouritesView.bottomAnchor, constant: -45.autoSized),
        
            //MARK:- FifthView Constraints
            
            birthdayBuddiesView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            birthdayBuddiesView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            birthdayBuddiesView.topAnchor.constraint(equalTo: favouritesView.bottomAnchor, constant: 28.autoSized),
            birthdayBuddiesView.heightAnchor.constraint(equalToConstant: 170.autoSized),
            
            //birthdayBuddiesIconView
            birthdayBuddiesIconView.leadingAnchor.constraint(equalTo: birthdayBuddiesView.leadingAnchor, constant: 30.autoSized),
            birthdayBuddiesIconView.topAnchor.constraint(equalTo: birthdayBuddiesView.topAnchor, constant: 30.autoSized),
            birthdayBuddiesIconView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            birthdayBuddiesIconView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //BirthdayBuddies ImageView
            birthdayBuddiesImageView.centerXAnchor.constraint(equalTo: birthdayBuddiesIconView.centerXAnchor, constant: 0),
            birthdayBuddiesImageView.centerYAnchor.constraint(equalTo: birthdayBuddiesIconView.centerYAnchor, constant: 0),
            birthdayBuddiesImageView.widthAnchor.constraint(equalToConstant: 28.autoSized),
            birthdayBuddiesImageView.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            
            //BirthdayBuddies Label
            birthdayBuddiesLabel.leadingAnchor.constraint(equalTo: birthdayBuddiesIconView.trailingAnchor, constant: 20.autoSized),
            birthdayBuddiesLabel.centerYAnchor.constraint(equalTo: birthdayBuddiesIconView.centerYAnchor, constant: 0),
            birthdayBuddiesLabel.trailingAnchor.constraint(equalTo: birthdayBuddiesView.trailingAnchor, constant: -16.autoSized),
            
            //BirthdayBuddiesNoRecord Label
            birthdayBuddiesNoRecordLabel.centerXAnchor.constraint(equalTo: birthdayBuddiesView.centerXAnchor, constant: 0),
            birthdayBuddiesNoRecordLabel.bottomAnchor.constraint(equalTo: birthdayBuddiesView.bottomAnchor, constant: -45.autoSized),
            
            
            
            
            //MARK:- SixthView Constraints
            
            leaveReportView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            leaveReportView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            leaveReportView.topAnchor.constraint(equalTo: birthdayBuddiesView.bottomAnchor, constant: 28.autoSized),
            leaveReportView.heightAnchor.constraint(equalToConstant: 400.autoSized),
            
            //LeaveReport IconView
            leaveReportIconView.leadingAnchor.constraint(equalTo: leaveReportView.leadingAnchor, constant: 30.autoSized),
            leaveReportIconView.topAnchor.constraint(equalTo: leaveReportView.topAnchor, constant: 30.autoSized),
            leaveReportIconView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            leaveReportIconView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //LeaveReport ImageView
            leaveReportImageView.centerXAnchor.constraint(equalTo: leaveReportIconView.centerXAnchor, constant: 0),
            leaveReportImageView.centerYAnchor.constraint(equalTo: leaveReportIconView.centerYAnchor, constant: 0),
            leaveReportImageView.widthAnchor.constraint(equalToConstant: 28.autoSized),
            leaveReportImageView.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            
            //LeaveReport Label
            leaveReportLabel.leadingAnchor.constraint(equalTo: leaveReportIconView.trailingAnchor, constant: 20.autoSized),
            leaveReportLabel.centerYAnchor.constraint(equalTo: leaveReportIconView.centerYAnchor, constant: 0),
            leaveReportLabel.trailingAnchor.constraint(equalTo: leaveReportView.trailingAnchor, constant: -16.autoSized),
            
            //LeaveReport Plus Button
            leaveReportPlusButton.trailingAnchor.constraint(equalTo: leaveReportView.trailingAnchor, constant: -16.autoSized),
            leaveReportPlusButton.centerYAnchor.constraint(equalTo: leaveReportLabel.centerYAnchor, constant: 0),
            leaveReportPlusButton.widthAnchor.constraint(equalToConstant: 28.autoSized),
            leaveReportPlusButton.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            //LeaveReport TableView
            leaveReportTableView.leadingAnchor.constraint(equalTo: leaveReportView.leadingAnchor, constant: 30.autoSized),
            leaveReportTableView.trailingAnchor.constraint(equalTo: leaveReportView.trailingAnchor, constant: -30.autoSized),
            leaveReportTableView.topAnchor.constraint(equalTo: leaveReportLabel.bottomAnchor, constant: 20.autoSized),
            leaveReportTableView.bottomAnchor.constraint(equalTo: leaveReportView.bottomAnchor, constant: -100.autoSized),
            
            //ViewMore btn
            viewMoreBtn.centerXAnchor.constraint(equalTo: leaveReportView.centerXAnchor, constant: 0),
            viewMoreBtn.bottomAnchor.constraint(equalTo: leaveReportView.bottomAnchor, constant: -30.autoSized),
            
            viewMoreBtn.widthAnchor.constraint(equalToConstant: 120.autoSized),
            viewMoreBtn.heightAnchor.constraint(equalToConstant: 36.autoSized),
            
            
            
            //MARK:- SeventhView Constraints
            
            upcomingHolidaysView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            upcomingHolidaysView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            upcomingHolidaysView.topAnchor.constraint(equalTo: leaveReportView.bottomAnchor, constant: 28.autoSized),
            upcomingHolidaysView.heightAnchor.constraint(equalToConstant: 170.autoSized),
            
            //upcomingHolidaysIconView
            upcomingHolidaysIconView.leadingAnchor.constraint(equalTo: upcomingHolidaysView.leadingAnchor, constant: 30.autoSized),
            upcomingHolidaysIconView.topAnchor.constraint(equalTo: upcomingHolidaysView.topAnchor, constant: 30.autoSized),
            upcomingHolidaysIconView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            upcomingHolidaysIconView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //BirthdayBuddies ImageView
            upcomingHolidaysImageView.centerXAnchor.constraint(equalTo: upcomingHolidaysIconView.centerXAnchor, constant: 0),
            upcomingHolidaysImageView.centerYAnchor.constraint(equalTo: upcomingHolidaysIconView.centerYAnchor, constant: 0),
            upcomingHolidaysImageView.widthAnchor.constraint(equalToConstant: 28.autoSized),
            upcomingHolidaysImageView.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            
            //BirthdayBuddies Label
            upcomingHolidaysLabel.leadingAnchor.constraint(equalTo: upcomingHolidaysIconView.trailingAnchor, constant: 20.autoSized),
            upcomingHolidaysLabel.centerYAnchor.constraint(equalTo: upcomingHolidaysIconView.centerYAnchor, constant: 0),
            upcomingHolidaysLabel.trailingAnchor.constraint(equalTo: upcomingHolidaysView.trailingAnchor, constant: -16.autoSized),
            
            //BirthdayBuddiesNoRecord Label
            upcomingHolidaysNoRecordLabel.centerXAnchor.constraint(equalTo: upcomingHolidaysView.centerXAnchor, constant: 0),
            upcomingHolidaysNoRecordLabel.bottomAnchor.constraint(equalTo: upcomingHolidaysView.bottomAnchor, constant: -45.autoSized),
            
            
            
            //MARK:- EighthView Constraints
            
            departmentMembersView.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 0),
            departmentMembersView.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: 0),
            departmentMembersView.topAnchor.constraint(equalTo: upcomingHolidaysView.bottomAnchor, constant: 28.autoSized),
            departmentMembersView.bottomAnchor.constraint(equalTo: mainContentView.bottomAnchor, constant: -50),
            departmentMembersView.heightAnchor.constraint(equalToConstant: 400.autoSized),
            
            
            //DepartmentMembersIcon View
            departmentMembersIconView.leadingAnchor.constraint(equalTo: departmentMembersView.leadingAnchor, constant: 30.autoSized),
            departmentMembersIconView.topAnchor.constraint(equalTo: departmentMembersView.topAnchor, constant: 30.autoSized),
            departmentMembersIconView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            departmentMembersIconView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            
            //DepartmentMembers ImageView
            departmentMembersImageView.centerXAnchor.constraint(equalTo: departmentMembersIconView.centerXAnchor, constant: 0),
            departmentMembersImageView.centerYAnchor.constraint(equalTo: departmentMembersIconView.centerYAnchor, constant: 0),
            departmentMembersImageView.widthAnchor.constraint(equalToConstant: 28.autoSized),
            departmentMembersImageView.heightAnchor.constraint(equalToConstant: 28.autoSized),
            
            
            //DepartmentMembers Label
            departmentMembersLabel.leadingAnchor.constraint(equalTo: departmentMembersIconView.trailingAnchor, constant: 20.autoSized),
            departmentMembersLabel.centerYAnchor.constraint(equalTo: departmentMembersIconView.centerYAnchor, constant: 0),
            departmentMembersLabel.trailingAnchor.constraint(equalTo: departmentMembersView.trailingAnchor, constant: -16.autoSized),
            
            
            //Department TableView
            departmentTableView.leadingAnchor.constraint(equalTo: departmentMembersView.leadingAnchor, constant: 30.autoSized),
            departmentTableView.trailingAnchor.constraint(equalTo: departmentMembersView.trailingAnchor, constant: -30.autoSized),
            departmentTableView.topAnchor.constraint(equalTo: departmentMembersLabel.bottomAnchor, constant: 25.autoSized),
            departmentTableView.bottomAnchor.constraint(equalTo: departmentMembersView.bottomAnchor, constant: -90.autoSized),
            
            departmentViewMoreBtn.centerXAnchor.constraint(equalTo: departmentMembersView.centerXAnchor, constant: 0),
            departmentViewMoreBtn.bottomAnchor.constraint(equalTo: departmentMembersView.bottomAnchor, constant: -30.autoSized),
            
            departmentViewMoreBtn.widthAnchor.constraint(equalToConstant: 120.autoSized),
            departmentViewMoreBtn.heightAnchor.constraint(equalToConstant: 36.autoSized),
        
        ])
        
    }
        
  
}
        

extension HomeViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == leaveReportTableView {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "LeaveReportCell") as! Home_LeaveReport_TableViewCell
            cell.backgroundColor = .LightWhite
            cell.title.text = LeaveReportTitleAndDetails.titles[indexPath.row]
            cell.leftView.backgroundColor = .randomColor
            let firstLetter = LeaveReportTitleAndDetails.titles[indexPath.row]
            cell.leftViewLabel.text = firstLetter[0]
            cell.takenLabel.text = "Taken: \(LeaveReportTitleAndDetails.takenLabelArray[indexPath.row]) |"
            cell.balanceLabel.text = " Balance: \(LeaveReportTitleAndDetails.balanceLabelArray[indexPath.row]) Days"
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "DepartmentCell") as! Home_Department_TableViewCell
            cell.backgroundColor = .LightWhite
            cell.profilePicImageView.image = UIImage(named: "profilePicture")
            cell.NameTitle.text = DeptMembersTitlesAndDetails.titles[indexPath.row]
            cell.personID.text = DeptMembersTitlesAndDetails.ids[indexPath.row]
            cell.mobileNumberLabel.text = DeptMembersTitlesAndDetails.mobileNumbers[indexPath.row]
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.autoSized
    }
    
    
}



