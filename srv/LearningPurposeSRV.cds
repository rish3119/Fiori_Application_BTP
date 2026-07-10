using app.LearningPurpose from '../db/LearningPurpose';


service LearningPurposeService @(require: 'authenticated-user') {
    entity Categories @(restrict: [
        {
            grant: ['*'],
            to   : 'LearningPurposeAdmin',

        },
        {
            grant: ['READ'],
            to   : 'LearningPurposeRead'
        }
    ])

    as  projection on LearningPurpose.Categories;

    entity Courses @(restrct: [{
        gant : [
            'WRITE',
            'UPDATE',
            'DELETE',
        ],
        to   : 'LearningPurposeSAP',
        where : 'course_name = "SAP"  '
    }]) as projection on LearningPurpose.Courses;
}