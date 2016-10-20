//
//  VerifyNumberViewController+Delegate.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

extension VerifyNumberViewController: CountryPhoneCodePickerDelegate {
    func countryPhoneCodePicker(picker: CountryPicker, didSelectCountryCountryWithName name: String, countryCode: String, phoneCode: String) {
        self.countryCode.text = phoneCode
    }
}