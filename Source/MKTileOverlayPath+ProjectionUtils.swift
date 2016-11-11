//
//  MKTileOverlayPath+ProjectionUtils.swift
//  GeometryUtilities
//
//  Created by Lluís Ulzurrun on 5/7/16.
//  Copyright © 2016 VisualNACert. All rights reserved.
//

import MapKit

extension MKTileOverlayPath {

	// Utils from: https://github.com/Sumbera/WMSOnMapKit-iOS7

	fileprivate func bboxWGS84XOf(column: Int, zoom: Int) -> Double {
		return Double(column) / pow(2.0, Double(zoom)) * 360.0 - 180
	}

	fileprivate func bboxWGS84YOf(row: Int, zoom: Int) -> Double {
		let n = M_PI - 2.0 * M_PI * Double(row) / pow(2.0, Double(zoom))
		return 180.0 / M_PI * atan(0.5 * (exp(n) - exp(-n)))
	}

	fileprivate var bboxWGS84Components: (Double, Double, Double, Double) {
		get {
			let left = bboxWGS84XOf(column: self.x, zoom: self.z)      // minX
			let right = bboxWGS84XOf(column: self.x + 1, zoom: self.z) // maxX
			let bottom = bboxWGS84YOf(row: self.y + 1, zoom: self.z)   // minY
			let top = bboxWGS84YOf(row: self.y, zoom: self.z)          // maxY
			return (left, right, bottom, top)
		}
	}

    /// Bounding box of this overlay path using WGS84 coordinate system.
	public var bboxWGS84: String {
		get {
			let (left, right, bottom, top) = self.bboxWGS84Components
			return "\(left),\(bottom),\(right),\(top)"
		}
	}

	fileprivate var bboxMercatorComponents: (Double, Double, Double, Double) {
		get {
			let (left, right, bottom, top) = self.bboxWGS84Components
            let bottomLeft = CLLocationCoordinate2D(
                latitude: bottom,
                longitude: left
            )
            let topRight = CLLocationCoordinate2D(
                latitude: top,
                longitude: right
            )
			return (
				bottomLeft.mercatorX,
				topRight.mercatorX,
				bottomLeft.mercatorY,
				topRight.mercatorY
			)
		}
	}

    /// Bounding box of this overlay path using Mercator projection.
	public var bboxMercator: String {
		get {
			let (left, right, bottom, top) = self.bboxMercatorComponents
			return "\(left),\(bottom),\(right),\(top)"
		}
	}

}
