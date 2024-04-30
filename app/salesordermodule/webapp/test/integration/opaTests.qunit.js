sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/deloitte/sap/salesordermodule/test/integration/FirstJourney',
		'com/deloitte/sap/salesordermodule/test/integration/pages/SalesTerritoryCollectionList',
		'com/deloitte/sap/salesordermodule/test/integration/pages/SalesTerritoryCollectionObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesTerritoryCollectionList, SalesTerritoryCollectionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/deloitte/sap/salesordermodule') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesTerritoryCollectionList: SalesTerritoryCollectionList,
					onTheSalesTerritoryCollectionObjectPage: SalesTerritoryCollectionObjectPage
                }
            },
            opaJourney.run
        );
    }
);