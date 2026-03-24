sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"webapp/students/test/integration/pages/StudentList",
	"webapp/students/test/integration/pages/StudentObjectPage",
	"webapp/students/test/integration/pages/studentAddressObjectPage"
], function (JourneyRunner, StudentList, StudentObjectPage, studentAddressObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('webapp/students') + '/test/flpSandbox.html#webappstudents-tile',
        pages: {
			onTheStudentList: StudentList,
			onTheStudentObjectPage: StudentObjectPage,
			onThestudentAddressObjectPage: studentAddressObjectPage
        },
        async: true
    });

    return runner;
});

