//
//  EKEventStore+AsyncFetch.swift
//  Today
//
//  Created by 高嶋芙佳 on 2023/07/11.
//

import EventKit
import Foundation

extension EKEventStore {
    func reminders(matching predicate: NSPredicate) async throws -> [EKReminder]{
        try await withCheckedThrowingContinuation {continuation in
            fetchReminders(matching: predicate) {reminders in
                if let reminders {
                    continuation.resume(returning: reminders)
                }else{
                    continuation.resume(throwing: TodayError.failedReadingReminders)
                }
            }
        }
    }
}
