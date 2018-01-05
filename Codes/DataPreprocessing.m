genderSubmission = readtable('C:\Users\Muyeed Ahmed\Documents\MATLAB\Kaggle Titanic\Data\gender_submission.xls');
test = readtable('C:\Users\Muyeed Ahmed\Documents\MATLAB\Kaggle Titanic\Data\test.xls');
train = readtable('C:\Users\Muyeed Ahmed\Documents\MATLAB\Kaggle Titanic\Data\train.xls');



testing = outerjoin(genderSubmission, test);
testing = testing(:,[1 3:13 2]);
testing(:,'PassengerId_genderSubmission') = [];
testing.Properties.VariableNames{1} = 'PassengerId';



