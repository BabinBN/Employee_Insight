sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"workforceinsights/test/integration/pages/employeeList",
	"workforceinsights/test/integration/pages/employeeObjectPage"
], function (JourneyRunner, employeeList, employeeObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('workforceinsights') + '/test/flpSandbox.html#workforceinsights-tile',
        pages: {
			onTheemployeeList: employeeList,
			onTheemployeeObjectPage: employeeObjectPage
        },
        async: true
    });

    return runner;
});

