//
//  TodayError.swift
//  Today
//
//  Created by 高嶋芙佳 on 2023/07/11.
//

import Foundation

enum TodayError: LocalizedError{
    case accessDenied
    case accessRestricted
    case faildReadingCalenderItem
    case failedReadingReminders
    case reminderHasNoDueDate
    case unknown
    
    var errorDescription: String?{
        switch self{
        case .accessDenied:
            return NSLocalizedString("The app doesn7t have permission to read reminders", comment: "access denied error description")
        case .accessRestricted:
            return NSLocalizedString("This device doesn't allow access to reminders", comment: "access restricted error description")
        case .faildReadingCalenderItem:
            return NSLocalizedString("Failed to read a calender item", comment: "failed reading calender item error description")
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminder", comment: "failed reading reminders error description")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A reminder has no due date", comment: "reminder has no due date error description")
        case .unknown:
            return NSLocalizedString("An unknown error occurred", comment: "unknown error description")
        }
    }
}
