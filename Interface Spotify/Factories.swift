//
//  functions.swift
//  Interface Spotify
//
//  Created by kenjimaeda on 15/07/22.
//

import Foundation
import UIKit



func makeLabel(_ text:String,color: UIColor,_ fontSize:CGFloat) ->UILabel {
	let label = UILabel()
	label.translatesAutoresizingMaskIntoConstraints = false
	label.font = UIFont.systemFont(ofSize: fontSize)
	label.textColor = color
	label.text = text
	label.numberOfLines = 0	//multiline
	return label
}

func makeSwitch(_ isOn: Bool) -> UISwitch {
	let customSwitch =  UISwitch()
	customSwitch.translatesAutoresizingMaskIntoConstraints = false
	customSwitch.isOn = isOn
	return customSwitch
}

func makeProgress () -> UIProgressView {
	let progress = UIProgressView(progressViewStyle: .default)
	progress.translatesAutoresizingMaskIntoConstraints = false
	progress.tintColor = .gray
	return progress
}
