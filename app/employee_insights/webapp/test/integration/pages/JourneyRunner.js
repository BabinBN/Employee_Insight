sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"employeeinsights/test/integration/pages/ProductList",
	"employeeinsights/test/integration/pages/ProductObjectPage"
], function (JourneyRunner, ProductList, ProductObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('employeeinsights') + '/test/flpSandbox.html#employeeinsights-tile',
        pages: {
			onTheProductList: ProductList,
			onTheProductObjectPage: ProductObjectPage
        },
        async: true
    });

    return runner;
});

