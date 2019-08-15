//
//  Controller.swift
//  Icon
//
//  Created by Taylor Lyles on 8/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation
import UIKit

struct HexagonLines {
	let width: CGFloat
	let length: CGFloat
	let color: UIColor
	var value: Int = 0
}

@IBDesignable
class IconView: UIView {
	
	private var triangle1 = HexagonLines(width: 5.0, length: 4.0, color: .white, value: 0)
	
	
	private var triangle1HandEndPoint: CGPoint {
		let triangle1AsRadians = Float(Double(triangle1.value) / 60.0 * 2.0 * Double.pi - Double.pi / 2)
		let handLength = CGFloat(frame.size.width / triangle1.length)
		return handEndPoint(with: triangle1AsRadians, and: handLength)
	}
	
	private let bgColor = UIColor.yellow
	private let borderColor = UIColor.green
	private let borderWidth: CGFloat = 2.0
	
	//View Lifecycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = UIColor.clear
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		backgroundColor = UIColor.clear
	}
	
	
	override func draw(_ rect: CGRect) {
		
		if let context = UIGraphicsGetCurrentContext()	{
			
			
			//Face
			
//			context.addEllipse(in: rect)
//			context.setFillColor(bgColor.cgColor)
//			context.fillPath()
//
//			let strokeRect = CGRect(x: rect.origin.x + borderWidth / 2,
//									y: rect.origin.y + borderWidth / 2,
//									width: rect.size.width - borderWidth,
//									height: rect.size.height - borderWidth)
//
//			context.addEllipse(in: strokeRect)
//			context.setLineWidth(borderWidth)
//			context.setStrokeColor(borderColor.cgColor)
//			context.strokePath()

			//numerals
			
			//BottomLineTriangle
			context.move(to: CGPoint(x: 4.5,
									  y: 249.5))
			context.addLine(to: CGPoint(x: 304,
										y: 249.5))
			context.setStrokeColor(UIColor.green.cgColor)
			context.setLineWidth(borderWidth)
			context.strokePath()
			
			//LeftLineTriangle
			context.move(to: CGPoint(x: 4.5,
									 y: 249.5))
			context.addLine(to: CGPoint(x: 304,
										y: 249.5))
			context.setStrokeColor(UIColor.green.cgColor)
			context.setLineWidth(borderWidth)
			context.strokePath()
			
		}
	}
	
	private func handEndPoint(with radianValue: Float, and handLength: CGFloat) -> CGPoint {
		return CGPoint(x: handLength * CGFloat(cosf(radianValue)) + frame.size.width / 2.0,
					   y: handLength * CGFloat(sinf(radianValue)) + frame.size.height / 2.0)
	}
		
}

