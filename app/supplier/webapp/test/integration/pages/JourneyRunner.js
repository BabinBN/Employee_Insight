sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"supplier/test/integration/pages/SupplierList",
	"supplier/test/integration/pages/SupplierObjectPage"
], function (JourneyRunner, SupplierList, SupplierObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('supplier') + '/test/flpSandbox.html#supplier-tile',
        pages: {
			onTheSupplierList: SupplierList,
			onTheSupplierObjectPage: SupplierObjectPage
        },
        async: true
    });

    return runner;
});

