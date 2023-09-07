import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: COURSE_DESC}
service "courseManagement" on ep {

    remote function createCourse(myCourse value) returns theRespond|error {
    }
    remote function updateCourse(myCourse value) returns theRespond|error {
    }
    remote function getCourseByCode(CourseCode value) returns myCourse|error {
    }
    remote function deleteCourse(CourseCode value) returns theRespond|error {
    }
}

