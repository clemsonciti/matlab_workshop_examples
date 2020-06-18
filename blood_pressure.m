clear all
num = xlsread ('matlab_workshop_dataset.xls');
id = num (:, 1);
sys = num (:, 2);
dias = num (:, 3);
pulse = num (:, 4);
cvd = num (:, 5);
cvd_yes = find (cvd == 1);
cvd_no = find (cvd == 0);
figure
hold on
plot (sys (cvd_yes), dias(cvd_yes), 'ro');
plot (sys (cvd_no), dias(cvd_no), 'go');
xlabel ('Systolic blood pressure');
ylabel ('Diastolic blood pressure');
title ('Blood pressure measurements');
legend ({'history of stroke', 'no history of stroke'});