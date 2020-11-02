//
//  Structs and Enums.swift
//  Zoho
//
//  Created by Abu Bakar on 10/30/20.
//

import Foundation

struct Images {
    
    static var imageArray = ["img-0", "img-1","img-2","img-3", "img-4"]
}

struct TitlesAndDetails {
    
    static var titles = [
        "GET UPDATES & COLLABORATE THROUGH FEEDS",
        "TRACK ATTENDANCE & MANAGE SHIFTS",
        "INSTANTLY CHECK-IN OR CHECK-OUT",
        "STAY ON                  TOP OF YOUR TASKS",
        "APPROVE OR REJECT REQUESTS" ]
    
    static var Details = [
        "Follow announcements, updates, and start discussions.",
        "Manage employee shifts and    access their weekly/monthly attendance reports.",
        "Mark the start and end of your wprkday with just a tap.",
        "Pickup, assign, and see tasks through to completion.",
        "All it takes is a single tap for employees to submit leave requests and for managers to approve them." ]
}

struct LeaveReportTitleAndDetails {
    static var titles = ["Casual","Compensaotry off", "Sick"]
    static var takenLabelArray = ["4.0", "0.0","3.0"]
    static var balanceLabelArray = ["3.0","0.0","11.0"]
}

struct DeptMembersTitlesAndDetails {
    static var titles = ["Muhammad Awais Khalid","Daniyal Shafiq", "Bilal Ahmed Abbasi"]
    static var ids = ["O3-051724", "O3-021929","O3-111939"]
    static var mobileNumbers = ["0331-2838440", "0321-3384712", "0322-5733123"]
}
