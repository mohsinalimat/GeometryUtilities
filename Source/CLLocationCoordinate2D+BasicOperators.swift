//
//  CLLocationCoordinate2D+BasicOperators.swift
//  GeometryUtilities
//
//  Created by Lluís Ulzurrun on 19/7/16.
//  Copyright © 2016 VisualNACert. All rights reserved.
//

import MapKit

/// Location coordinate for point at latitude and longitude 0.
public let CLLocationCoordinate2DZero = CLLocationCoordinate2D(
    latitude: 0,
    longitude: 0
)

extension CLLocationCoordinate2D: Equatable {
    
    /// Compares two coordinates and returns true if their latitude and 
    /// longitudes are equal.
    public static func == (
        left: CLLocationCoordinate2D,
        right: CLLocationCoordinate2D
    ) -> Bool {
        return (
            left.latitude == right.latitude &&
            left.longitude == right.longitude
        )
    }
    
    /// Adds two coordinates, returning the coordinate resulting of adding each
    /// component independently.
    public static func + (
        left: CLLocationCoordinate2D,
        right: CLLocationCoordinate2D
    ) -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: left.latitude + right.latitude,
            longitude: left.longitude + right.longitude
        )
    }
    
    /// Subtracts two coordinates, returning the coordinate resulting of subtracting
    /// each component independently.
    public static func - (
        left: CLLocationCoordinate2D,
        right: CLLocationCoordinate2D
    ) -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: left.latitude - right.latitude,
            longitude: left.longitude - right.longitude
        )
    }
    
    /// Returns the coordinate resulting of dividing each component by given numeric
    /// value as a floating point number.
    public static func / (
        left: CLLocationCoordinate2D,
        right: Int
    ) -> CLLocationCoordinate2D {
        return left / Double(right)
    }
    
    /// Returns the coordinate resulting of dividing each component by given
    /// floating point number.
    public static func / (
        left: CLLocationCoordinate2D,
        right: Double
    ) -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: left.latitude / right,
            longitude: left.longitude / right
        )
    }
    
    /// Returns the coordinate resulting of multiplying each component by given
    /// numeric value as a floating point number.
    public static func * (
        left: CLLocationCoordinate2D,
        right: Int
    ) -> CLLocationCoordinate2D {
        return left * Double(right)
    }
    
    /// Returns the coordinate resulting of multiplying each component by given
    /// floating point number.
    public static func * (
        left: CLLocationCoordinate2D,
        right: Double
    ) -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: left.latitude * right,
            longitude: left.longitude * right
        )
    }
    
}

/// Returns location coordinate corresponding to given coordinate ignoring 
/// latitude's and longitude's signs.
public func abs(_ value: CLLocationCoordinate2D) -> CLLocationCoordinate2D {
	return CLLocationCoordinate2D(
        latitude: abs(value.latitude),
        longitude: abs(value.longitude)
    )
}

extension Collection
where Iterator.Element == CLLocationCoordinate2D, Self.IndexDistance == Int {

	/**
	 Returns centroid of polygon with this list of coordinates.

	 - returns: Centroid of polygon formed by this list of coordinates.
	 */
	public func centroid() -> CLLocationCoordinate2D {
		guard self.count > 0 else { return kCLLocationCoordinate2DInvalid }
		return self.reduce(CLLocationCoordinate2DZero) { $0 + $1 } / self.count
	}

}
