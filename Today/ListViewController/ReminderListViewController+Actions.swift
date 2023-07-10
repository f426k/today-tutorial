//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by 高嶋芙佳 on 2023/07/10.
//

import UIKit

extension ReminderListViewController{
    @objc func didPressDoneButton(_ sender:ReminderDoneButton){
        guard let id = sender.id else {return}
        completeReminder(withId: id)
    }
}
