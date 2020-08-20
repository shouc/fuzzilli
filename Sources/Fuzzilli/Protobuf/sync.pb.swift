// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: sync.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Fuzzilli_Protobuf_Identification {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// UUID of the sending instance.
  public var uuid: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Fuzzilli_Protobuf_LogMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// UUID of the originator of the log message.
  public var originator: String = String()

  public var level: UInt32 = 0

  public var label: String = String()

  public var content: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Fuzzilli_Protobuf_FuzzerState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var corpus: Data = SwiftProtobuf.Internal.emptyData

  public var evaluatorState: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Fuzzilli_Protobuf_Statistics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  //// The total number of samples produced.
  public var totalSamples: UInt64 = 0

  //// The number of valid samples produced.
  public var validSamples: UInt64 = 0

  //// The number of intersting samples produced.
  public var interestingSamples: UInt64 = 0

  //// The number of timed-out samples produced.
  public var timedOutSamples: UInt64 = 0

  //// The number of crashes found.
  public var crashingSamples: UInt64 = 0

  //// The total number of program executions.
  public var totalExecs: UInt64 = 0

  //// The average size of produced programs over the last 1000 programs.
  public var avgProgramSize: Double = 0

  //// The current executions per second.
  public var execsPerSecond: Double = 0

  //// The number of workers connected directly or indirectly to this instance.
  public var numWorkers: UInt64 = 0

  //// The percentage of edges covered if doing coverage-guided fuzzing.
  public var coverage: Double = 0

  //// Number of interesting samples with runtime types information
  public var interestingSamplesWithTypes: UInt64 = 0

  //// Number of timeouts in runtime type collections runs
  public var typeCollectionTimeouts: UInt64 = 0

  //// Number of failures in runtime type collections runs
  public var typeCollectionFailures: UInt64 = 0

  //// Number of runtime type collections runs
  public var typeCollectionAttempts: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "fuzzilli.protobuf"

extension Fuzzilli_Protobuf_Identification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Identification"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.uuid)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uuid.isEmpty {
      try visitor.visitSingularStringField(value: self.uuid, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_Identification, rhs: Fuzzilli_Protobuf_Identification) -> Bool {
    if lhs.uuid != rhs.uuid {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_LogMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "originator"),
    2: .same(proto: "level"),
    3: .same(proto: "label"),
    4: .same(proto: "content"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.originator)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.level)
      case 3: try decoder.decodeSingularStringField(value: &self.label)
      case 4: try decoder.decodeSingularStringField(value: &self.content)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.originator.isEmpty {
      try visitor.visitSingularStringField(value: self.originator, fieldNumber: 1)
    }
    if self.level != 0 {
      try visitor.visitSingularUInt32Field(value: self.level, fieldNumber: 2)
    }
    if !self.label.isEmpty {
      try visitor.visitSingularStringField(value: self.label, fieldNumber: 3)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_LogMessage, rhs: Fuzzilli_Protobuf_LogMessage) -> Bool {
    if lhs.originator != rhs.originator {return false}
    if lhs.level != rhs.level {return false}
    if lhs.label != rhs.label {return false}
    if lhs.content != rhs.content {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_FuzzerState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FuzzerState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "corpus"),
    2: .same(proto: "evaluatorState"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.corpus)
      case 2: try decoder.decodeSingularBytesField(value: &self.evaluatorState)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.corpus.isEmpty {
      try visitor.visitSingularBytesField(value: self.corpus, fieldNumber: 1)
    }
    if !self.evaluatorState.isEmpty {
      try visitor.visitSingularBytesField(value: self.evaluatorState, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_FuzzerState, rhs: Fuzzilli_Protobuf_FuzzerState) -> Bool {
    if lhs.corpus != rhs.corpus {return false}
    if lhs.evaluatorState != rhs.evaluatorState {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_Statistics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Statistics"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "totalSamples"),
    2: .same(proto: "validSamples"),
    3: .same(proto: "interestingSamples"),
    4: .same(proto: "timedOutSamples"),
    5: .same(proto: "crashingSamples"),
    6: .same(proto: "totalExecs"),
    7: .same(proto: "avgProgramSize"),
    8: .same(proto: "execsPerSecond"),
    9: .same(proto: "numWorkers"),
    10: .same(proto: "coverage"),
    11: .same(proto: "interestingSamplesWithTypes"),
    12: .same(proto: "typeCollectionTimeouts"),
    13: .same(proto: "typeCollectionFailures"),
    14: .same(proto: "typeCollectionAttempts"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.totalSamples)
      case 2: try decoder.decodeSingularUInt64Field(value: &self.validSamples)
      case 3: try decoder.decodeSingularUInt64Field(value: &self.interestingSamples)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.timedOutSamples)
      case 5: try decoder.decodeSingularUInt64Field(value: &self.crashingSamples)
      case 6: try decoder.decodeSingularUInt64Field(value: &self.totalExecs)
      case 7: try decoder.decodeSingularDoubleField(value: &self.avgProgramSize)
      case 8: try decoder.decodeSingularDoubleField(value: &self.execsPerSecond)
      case 9: try decoder.decodeSingularUInt64Field(value: &self.numWorkers)
      case 10: try decoder.decodeSingularDoubleField(value: &self.coverage)
      case 11: try decoder.decodeSingularUInt64Field(value: &self.interestingSamplesWithTypes)
      case 12: try decoder.decodeSingularUInt64Field(value: &self.typeCollectionTimeouts)
      case 13: try decoder.decodeSingularUInt64Field(value: &self.typeCollectionFailures)
      case 14: try decoder.decodeSingularUInt64Field(value: &self.typeCollectionAttempts)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.totalSamples != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalSamples, fieldNumber: 1)
    }
    if self.validSamples != 0 {
      try visitor.visitSingularUInt64Field(value: self.validSamples, fieldNumber: 2)
    }
    if self.interestingSamples != 0 {
      try visitor.visitSingularUInt64Field(value: self.interestingSamples, fieldNumber: 3)
    }
    if self.timedOutSamples != 0 {
      try visitor.visitSingularUInt64Field(value: self.timedOutSamples, fieldNumber: 4)
    }
    if self.crashingSamples != 0 {
      try visitor.visitSingularUInt64Field(value: self.crashingSamples, fieldNumber: 5)
    }
    if self.totalExecs != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalExecs, fieldNumber: 6)
    }
    if self.avgProgramSize != 0 {
      try visitor.visitSingularDoubleField(value: self.avgProgramSize, fieldNumber: 7)
    }
    if self.execsPerSecond != 0 {
      try visitor.visitSingularDoubleField(value: self.execsPerSecond, fieldNumber: 8)
    }
    if self.numWorkers != 0 {
      try visitor.visitSingularUInt64Field(value: self.numWorkers, fieldNumber: 9)
    }
    if self.coverage != 0 {
      try visitor.visitSingularDoubleField(value: self.coverage, fieldNumber: 10)
    }
    if self.interestingSamplesWithTypes != 0 {
      try visitor.visitSingularUInt64Field(value: self.interestingSamplesWithTypes, fieldNumber: 11)
    }
    if self.typeCollectionTimeouts != 0 {
      try visitor.visitSingularUInt64Field(value: self.typeCollectionTimeouts, fieldNumber: 12)
    }
    if self.typeCollectionFailures != 0 {
      try visitor.visitSingularUInt64Field(value: self.typeCollectionFailures, fieldNumber: 13)
    }
    if self.typeCollectionAttempts != 0 {
      try visitor.visitSingularUInt64Field(value: self.typeCollectionAttempts, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_Statistics, rhs: Fuzzilli_Protobuf_Statistics) -> Bool {
    if lhs.totalSamples != rhs.totalSamples {return false}
    if lhs.validSamples != rhs.validSamples {return false}
    if lhs.interestingSamples != rhs.interestingSamples {return false}
    if lhs.timedOutSamples != rhs.timedOutSamples {return false}
    if lhs.crashingSamples != rhs.crashingSamples {return false}
    if lhs.totalExecs != rhs.totalExecs {return false}
    if lhs.avgProgramSize != rhs.avgProgramSize {return false}
    if lhs.execsPerSecond != rhs.execsPerSecond {return false}
    if lhs.numWorkers != rhs.numWorkers {return false}
    if lhs.coverage != rhs.coverage {return false}
    if lhs.interestingSamplesWithTypes != rhs.interestingSamplesWithTypes {return false}
    if lhs.typeCollectionTimeouts != rhs.typeCollectionTimeouts {return false}
    if lhs.typeCollectionFailures != rhs.typeCollectionFailures {return false}
    if lhs.typeCollectionAttempts != rhs.typeCollectionAttempts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
