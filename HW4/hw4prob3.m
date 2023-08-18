fid = fopen('grades.txt', 'r');
scores = fscanf(fid, '%*s %f %f', [2 inf]); 
scores = scores';
count = size(scores,1);
for i = 1 : count
   ave = (scores(i,1) + scores(i,2))/2;
   fprintf('Student # %i: average score = %4.2f\n', i, ave);
end
fclose(fid);