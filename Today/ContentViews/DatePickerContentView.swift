//
//  DatePickerContentView.swift
//  Today
//
//  Created by 高嶋芙佳 on 2023/07/10.
//

import UIKit

class DatePickerContentView:UIView,UIContentView{
    struct Configonuration:UIContentConfiguration{
        var date = Date.now
        var onChange: (Date) -> Void = {_ in}
        
        func makeContentView() ->UIView & UIContentView{
            return DatePickerContentView(self)
        }
    }
    
    let datePicker = UIDatePicker()
    var configuration: UIContentConfiguration{
        didSet{
            configure(configuration:configuration)
        }
    }
    
    init(_ configuration:UIContentConfiguration){
        self.configuration = configuration
        super.init(frame: .zero)
        addPinnedSubView(datePicker)
        datePicker.addTarget(self, action: #selector(didPick(_:)), for: .valueChanged)
        datePicker.preferredDatePickerStyle = .inline
    }
    
    required init?(coder:NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(configuration:UIContentConfiguration){
        guard let configuration = configuration as? Configonuration else {return}
        datePicker.date = configuration.date
    }
    
    @objc private func didPick(_ sender:UIDatePicker){
        guard let configuration = configuration as? DatePickerContentView.Configonuration else {return}
        configuration.onChange(sender.date)
    }
}

extension UICollectionViewListCell{
    func datePickerConfiguration() -> DatePickerContentView.Configonuration{
        DatePickerContentView.Configonuration()
    }
}
