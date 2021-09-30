// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class TestDetailsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query TestDetails($id: String!) {
      Test(id: $id) {
        __typename
        _id
        files
        timeStamp
      }
    }
    """

  public let operationName: String = "TestDetails"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["RootQuery"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Test", arguments: ["id": GraphQLVariable("id")], type: .object(Test.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(test: Test? = nil) {
      self.init(unsafeResultMap: ["__typename": "RootQuery", "Test": test.flatMap { (value: Test) -> ResultMap in value.resultMap }])
    }

    public var test: Test? {
      get {
        return (resultMap["Test"] as? ResultMap).flatMap { Test(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Test")
      }
    }

    public struct Test: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Test"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("files", type: .list(.scalar(String.self))),
          GraphQLField("timeStamp", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, files: [String?]? = nil, timeStamp: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Test", "_id": _id, "files": files, "timeStamp": timeStamp])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var files: [String?]? {
        get {
          return resultMap["files"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "files")
        }
      }

      public var timeStamp: String? {
        get {
          return resultMap["timeStamp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "timeStamp")
        }
      }
    }
  }
}

public final class GetTestListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getTestList {
      TestList {
        __typename
        issues
        _id
        files
        DetailedReport
        timeStamp
      }
    }
    """

  public let operationName: String = "getTestList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["RootQuery"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("TestList", type: .list(.object(TestList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(testList: [TestList?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "RootQuery", "TestList": testList.flatMap { (value: [TestList?]) -> [ResultMap?] in value.map { (value: TestList?) -> ResultMap? in value.flatMap { (value: TestList) -> ResultMap in value.resultMap } } }])
    }

    public var testList: [TestList?]? {
      get {
        return (resultMap["TestList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TestList?] in value.map { (value: ResultMap?) -> TestList? in value.flatMap { (value: ResultMap) -> TestList in TestList(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [TestList?]) -> [ResultMap?] in value.map { (value: TestList?) -> ResultMap? in value.flatMap { (value: TestList) -> ResultMap in value.resultMap } } }, forKey: "TestList")
      }
    }

    public struct TestList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Test"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("issues", type: .scalar(String.self)),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("files", type: .list(.scalar(String.self))),
          GraphQLField("DetailedReport", type: .scalar(String.self)),
          GraphQLField("timeStamp", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(issues: String? = nil, _id: String? = nil, files: [String?]? = nil, detailedReport: String? = nil, timeStamp: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Test", "issues": issues, "_id": _id, "files": files, "DetailedReport": detailedReport, "timeStamp": timeStamp])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var issues: String? {
        get {
          return resultMap["issues"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "issues")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var files: [String?]? {
        get {
          return resultMap["files"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "files")
        }
      }

      public var detailedReport: String? {
        get {
          return resultMap["DetailedReport"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "DetailedReport")
        }
      }

      public var timeStamp: String? {
        get {
          return resultMap["timeStamp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "timeStamp")
        }
      }
    }
  }
}
