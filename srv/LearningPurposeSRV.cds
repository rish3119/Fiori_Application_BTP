using app.LearningPurpose from '../db/LearningPurpose';


service LearningPurposeService {
    entity Categories as projection on LearningPurpose.Categories;
    entity Courses as projection on LearningPurpose.Courses;
}