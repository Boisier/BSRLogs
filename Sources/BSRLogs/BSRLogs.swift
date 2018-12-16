//
//  BSRLogs.swift
//  BSRLogs
//
//  Created by Valentin Dufois on 15/12/2018.
//

open class BSRLogs {
	/// Print an informational message to the console
	///
	/// - Parameters:
	///   - message: The message to print
	static func info (		 _ message: String,
			  fromLine 	  line: Int    = #line,
			  ofMethod  method: String = #function,
				ofFile    file: String = #file) {
		raw("[\(file):\(method):\(line)] \(message)")
	}

	/// Print a warning message to the console
	///
	/// This does not halt the program execution
	///
	/// - Parameters:
	///   - message: The message to print
	static func warning (       _ message: String,
				  fromLine    line: Int    = #line,
				  ofMethod  method: String = #function,
				  ofFile      file: String = #file) {
		raw("⚠️ [\(file):\(method):\(line)] \(message)")
	}

	/// Print an error message to the console
	///
	/// This does not halt the program execution. This method should be used
	/// on cases where the program encountered an incorrect behavior but was able
	/// to handle it.
	///
	/// - Parameters:
	///   - message: The message to print
	static func error (       _ message: String,
						 fromLine    line: Int    = #line,
						 ofMethod  method: String = #function,
						 ofFile      file: String = #file) {
		raw("❗️ [\(file):\(method):\(line)] \(message)")
	}

	static func raw(_ message: String) {
		print(message)
	}
}

public typealias Log = BSRLogs
