namespace app.LearningPurpose;
using { Language, managed } from '@sap/cds/common';

type String50 : String(50);

entity Categories {
    key ID : UUID;
    Name : localized String50;
    Description : localized String(500);
    Courses : Association to many Courses on Courses.category = $self;
}


entity Courses : managed {
    key category : Association to Categories;
    key course_id : UUID;
        course_name : localized String50;
        price : localized String(50);
        language : Language;
}