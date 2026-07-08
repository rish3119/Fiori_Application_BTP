sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"learningpurposefioriapp/learninhgpurposeapp/test/integration/pages/CategoriesList.gen",
	"learningpurposefioriapp/learninhgpurposeapp/test/integration/pages/CategoriesObjectPage.gen",
	"learningpurposefioriapp/learninhgpurposeapp/test/integration/pages/CoursesObjectPage.gen"
], function (JourneyRunner, CategoriesListGenerated, CategoriesObjectPageGenerated, CoursesObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('learningpurposefioriapp/learninhgpurposeapp') + '/test/flp.html#app-preview',
        pages: {
			onTheCategoriesListGenerated: CategoriesListGenerated,
			onTheCategoriesObjectPageGenerated: CategoriesObjectPageGenerated,
			onTheCoursesObjectPageGenerated: CoursesObjectPageGenerated
        },
        async: true
    });

    return runner;
});

