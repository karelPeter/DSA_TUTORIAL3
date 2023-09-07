import ballerina/grpc;
import ballerina/protobuf;

public const string COURSE_DESC = "0A0C436F757273652E70726F746F1210636F757273654D616E6167656D656E7422560A086D79436F7572736512120A046E616D6518012001280952046E616D6512120A04636F64651802200128095204636F646512220A0C6C6563747572656E616D6573180320032809520C6C6563747572656E616D657322260A0A746865526573706F6E6412180A07526573706F6E641801200128095207526573706F6E6422200A0A436F75727365436F646512120A04436F64651801200128095204436F646522480A0A616C6C636F7572736573123A0A0A616C6C636F757273657318012003280B321A2E636F757273654D616E6167656D656E742E6D79436F75727365520A616C6C636F757273657332BF020A10636F757273654D616E6167656D656E7412480A0C637265617465436F75727365121A2E636F757273654D616E6167656D656E742E6D79436F757273651A1C2E636F757273654D616E6167656D656E742E746865526573706F6E6412480A0C757064617465436F75727365121A2E636F757273654D616E6167656D656E742E6D79436F757273651A1C2E636F757273654D616E6167656D656E742E746865526573706F6E64124B0A0F676574436F757273654279436F6465121C2E636F757273654D616E6167656D656E742E436F75727365436F64651A1A2E636F757273654D616E6167656D656E742E6D79436F75727365124A0A0C64656C657465436F75727365121C2E636F757273654D616E6167656D656E742E436F75727365436F64651A1C2E636F757273654D616E6167656D656E742E746865526573706F6E64620670726F746F33";

public isolated client class courseManagementClient {
    *grpc:AbstractClientEndpoint;

    private final grpc:Client grpcClient;

    public isolated function init(string url, *grpc:ClientConfiguration config) returns grpc:Error? {
        self.grpcClient = check new (url, config);
        check self.grpcClient.initStub(self, COURSE_DESC);
    }

    isolated remote function createCourse(myCourse|ContextMyCourse req) returns theRespond|grpc:Error {
        map<string|string[]> headers = {};
        myCourse message;
        if req is ContextMyCourse {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/createCourse", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <theRespond>result;
    }

    isolated remote function createCourseContext(myCourse|ContextMyCourse req) returns ContextTheRespond|grpc:Error {
        map<string|string[]> headers = {};
        myCourse message;
        if req is ContextMyCourse {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/createCourse", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <theRespond>result, headers: respHeaders};
    }

    isolated remote function updateCourse(myCourse|ContextMyCourse req) returns theRespond|grpc:Error {
        map<string|string[]> headers = {};
        myCourse message;
        if req is ContextMyCourse {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/updateCourse", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <theRespond>result;
    }

    isolated remote function updateCourseContext(myCourse|ContextMyCourse req) returns ContextTheRespond|grpc:Error {
        map<string|string[]> headers = {};
        myCourse message;
        if req is ContextMyCourse {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/updateCourse", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <theRespond>result, headers: respHeaders};
    }

    isolated remote function getCourseByCode(CourseCode|ContextCourseCode req) returns myCourse|grpc:Error {
        map<string|string[]> headers = {};
        CourseCode message;
        if req is ContextCourseCode {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/getCourseByCode", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <myCourse>result;
    }

    isolated remote function getCourseByCodeContext(CourseCode|ContextCourseCode req) returns ContextMyCourse|grpc:Error {
        map<string|string[]> headers = {};
        CourseCode message;
        if req is ContextCourseCode {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/getCourseByCode", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <myCourse>result, headers: respHeaders};
    }

    isolated remote function deleteCourse(CourseCode|ContextCourseCode req) returns theRespond|grpc:Error {
        map<string|string[]> headers = {};
        CourseCode message;
        if req is ContextCourseCode {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/deleteCourse", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <theRespond>result;
    }

    isolated remote function deleteCourseContext(CourseCode|ContextCourseCode req) returns ContextTheRespond|grpc:Error {
        map<string|string[]> headers = {};
        CourseCode message;
        if req is ContextCourseCode {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("courseManagement.courseManagement/deleteCourse", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <theRespond>result, headers: respHeaders};
    }
}

public type ContextTheRespond record {|
    theRespond content;
    map<string|string[]> headers;
|};

public type ContextCourseCode record {|
    CourseCode content;
    map<string|string[]> headers;
|};

public type ContextMyCourse record {|
    myCourse content;
    map<string|string[]> headers;
|};

@protobuf:Descriptor {value: COURSE_DESC}
public type theRespond record {|
    string Respond = "";
|};

@protobuf:Descriptor {value: COURSE_DESC}
public type CourseCode record {|
    string Code = "";
|};

@protobuf:Descriptor {value: COURSE_DESC}
public type allcourses record {|
    myCourse[] allcourses = [];
|};

@protobuf:Descriptor {value: COURSE_DESC}
public type myCourse record {|
    string name = "";
    string code = "";
    string[] lecturenames = [];
|};

