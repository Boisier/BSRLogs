//
//  BSRLogs.swift
//  BSRLogs
//
//  Created by Valentin Dufois on 15/12/2018.
//

import Foundation

open class BSRLogs {
	/// Print an informational message to the console
	///
	/// - Parameters:
	///   - message: The message to print
	public static func info (		 _ message: String,
			  fromLine 	  line: Int    = #line,
			  ofMethod  method: String = #function,
				ofFile    file: String = #file) {
		raw(message, location: locationBlock(file, method, line), prefix: ">")
	}

	/// Print a warning message to the console
	///
	/// This does not halt the program execution
	///
	/// - Parameters:
	///   - message: The message to print
	public static func warning (       _ message: String,
				  fromLine    line: Int    = #line,
				  ofMethod  method: String = #function,
				  ofFile      file: String = #file) {
		raw(message, location: locationBlock(file, method, line), prefix: "⚠️")
	}

	/// Print an error message to the console
	///
	/// This does not halt the program execution. This method should be used
	/// on cases where the program encountered an incorrect behavior but was able
	/// to handle it.
	///
	/// - Parameters:
	///   - message: The message to print
	public static func error (       _ message: String,
						 fromLine    line: Int    = #line,
						 ofMethod  method: String = #function,
						 ofFile      file: String = #file) {
		raw(message, location: locationBlock(file, method, line), prefix: "❗️")
	}

	/// Will print the given information on the console wih limited formatting
	///
	/// - Parameters:
	///   - message: The main message
	///   - location: Any location informations
	///   - prefix: Any needed prefix
	public static func raw(_ message: String, location: String = "", prefix: String = "") {
		print("\(prefix) [\(location)] \(message)")
	}

	internal static func locationBlock(_ file: String, _ method: String, _ line:Int) -> String {

		let fileName = URL(fileURLWithPath: file).deletingPathExtension().lastPathComponent

		return "\(fileName):\(method):\(line)"
	}
}

public typealias Log = BSRLogs
