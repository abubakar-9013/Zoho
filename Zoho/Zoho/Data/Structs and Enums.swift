//
//  Structs and Enums.swift
//  Zoho
//
//  Created by Abu Bakar on 10/30/20.
//

import Foundation

struct NetworkInfo {
    var interface: String
    var success: Bool = false
    var ssid: String?
    var bssid: String?
}

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
    static var titles = ["Casual","Compensaotry off", "Sick", "Unpaid"]
    static var takenLabelArray = ["4.0", "0.0","3.0", "0.0"]
    static var balanceLabelArray = ["3.0","0.0","11.0", "30.0"]
}

struct DeptMembersTitlesAndDetails {
    static var titles = ["Muhammad Awais Khalid","Daniyal Shafiq", "Bilal Ahmed Abbasi", "Ghulam Sarwar Khan"]
    static var ids = ["O3-051724", "O3-021929","O3-111939", "O3-192033"]
    static var mobileNumbers = ["0331-2838440", "0321-3384712", "0322-5733123", "0311-2939449"]
}

struct ApplyLeaveDetails {
    static var headings = ["Employee ID","Leave type * ", "From *", "To *", "Team Email ID", "Reason for Leave"]
    static var subs = ["Muhammad Abubakar O3-0234939", "Select", "29-10-2020", "29-10-2020", "Enter here", "Enter here"]
}

struct NotificationTitleAndDetails {
    
    static var titles = ["Reminder for check-in", "Reminder for check-out"]
    static var subtitles = ["Yesterday 9:00 AM", "Yesterday 6:00 PM"]
}

struct Members {
    static var memberNames = ["Abdul Moeed Amjad", "Aleena Zaheer", "Ali Zulqarnain", "Ali Kamal", "Ashar Hussain"]
    static var designation = ["Web Development", "Graphic Design", "Executive Management", "Sales and Marketing", "Web Development"]
    static var alphabets = ["A", "B", "C", "D", "E"]
}

struct BasicInfo {
    static var title = ["EmployeeID", "Last Name","Photo", "Added By", "Added time", "First Name", "Email ID", "Nick Name", "Modified By"]
    static var detail = ["O3-051724", "Khalid","", "O3-101936-Eisha-Khalid", "17-Oct-2019, 16:49:16", "Muhammad Awais", "awais.khalid@o3interfaces.com", "", "O3-120034 Muhammad Sheraz"]
}

struct Work {
    
    static var title = ["Department", "Reporting To","Source of hire", "Seating Location", "Location", "Title", "Date of joining", "Employee status", "Employee type", "Work phone", "Extension", "Role"]
    static var detail = ["iOS Development", "Muhammad Hanna O3-052495","Referral", "", "", "Technical Lead iOS Specialist", "01-May-2017", "Active", "Permanent", "", "", "Team Lead"]
}

struct Personal {
    static var title = ["Mobile Phone", "Other Email", "Birth Date", "Marital Status", "Address", "Tags"]
    static var detail = ["0324-3399204", "", "", "Single", "House 123 Islamabad", ""]
}

struct Summary {
    static var title = ["Job Description", "Ask me About / Expertise", "About me"]
    static var detail = ["iOS Developer", "", ""]
}

struct Services {
    static var images = ["service0", "service1", "service2", "service3", "service4", "service5", "service6", "service7", "service8", "service9"]
    static var label = ["LEAVE TRACKER", "TIME TRACKER", "ATTENDANCE", "FILES", "ORGANIZATION", "TRAVEL", "COMPENSATION", "ANNOUNCEMENT", "OFFICE READINEDD", "TASKS"]
    static var leaveTracker = ["Views", "Compensatory Request", "Holidays"]
    static var leaveViewDate = ["27-10-2020", "01-2-2020", "3-8-2020", "21-5-2020", "27-10-2020", "27-10-2020", "27-10-2020", "27-10-2020", "27-10-2020"]
    static var leaveDetailTitle = ["Employee ID", "Leave type","Date", "Total Days taken", "Days taken", "Team Email ID", "Date of Request", "Reason for leave"]
    static var leaveDetailSubtitle = ["Muhammad Awais Khalid O3-051724", "Sick", "27-10-2020", "1 Day(s)", "1", "-", "26-10-2020", "I want to enjoy"]
    static var addRequestTitles = ["Employee Name *", "Worked Date *", "Unit *", "Duration *", "Start Time", "End Time", "Expiry Date", "Description"]
    static var addRequestDetail = ["Muhammad Awais Khalid", "24-10-2020", "Days", "Full Day", "From", "To", "31-12-2020","Enter Here"]
    static var filterTitle = ["View Type", "Period", "From Date", "To date", "Employee", "Department", "Location", "Status"]
    static var filterDetails = ["Select", "This Year", "01-01-2020", "31-12-2020", "All Employees", "Select", "Select", "All"]
    static var holidaysTitles = ["Kashmir Day", "Pakistan Day", "Labour Day", "Eid Holidays","Eid Holidays","Eid Holidays","Eid Holidays","Eid Holidays","Eid Holidays","Eid Holidays"]
    static var holidaysDate = ["Wed, Feb 05 2020", "Thu, Mar 23 2020", "Fri May 01 2020", "Fri, May20 2020", "Wed, Feb 05 2020", "Wed, Feb 05 2020","Tue, Apr 05 2020", "Sun, June 15 2020", "Wed, Aug 21 2020", "Sat, Feb 05 2020"]
    
    static var timeTracker = ["Time Logs", "Timesheets", "Jobs", "Projects"]
}



