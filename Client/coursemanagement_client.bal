import ballerina/io;

courseManagementClient ep = check new ("http://localhost:9090");

public function main() returns error? {
    myCourse createCourseRequest = {name: "ballerina", code: "ballerina", lecturenames: ["ballerina"]};
    theRespond createCourseResponse = check ep->createCourse(createCourseRequest);
    io:println(createCourseResponse);

    myCourse updateCourseRequest = {name: "ballerina", code: "ballerina", lecturenames: ["ballerina"]};
    theRespond updateCourseResponse = check ep->updateCourse(updateCourseRequest);
    io:println(updateCourseResponse);

    CourseCode getCourseByCodeRequest = {Code: "ballerina"};
    myCourse getCourseByCodeResponse = check ep->getCourseByCode(getCourseByCodeRequest);
    io:println(getCourseByCodeResponse);

    CourseCode deleteCourseRequest = {Code: "ballerina"};
    theRespond deleteCourseResponse = check ep->deleteCourse(deleteCourseRequest);
    io:println(deleteCourseResponse);
}

