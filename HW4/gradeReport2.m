[id test1 test2] = textread('grades.txt', '%s %f %f');

fid = fopen('grades.txt', 'r');
scores = fscanf(fid, '%*s %f %f', [2 inf]);
fclose(fid);

fid = fopen('output.txt', 'w');
scores = scores';
count = size(scores,1);

fprintf('Id     Test1   Test2   Average  Letter Grade\n');
fprintf('---------------------------------------------\n');

for i = 1 : count
   ave = (scores(i,1) + scores(i,2))/2;
   idResult = char(id(i));
   test1result = test1(i);
   test2result = test2(i);
   letterGrade = score1(ave);
   fprintf(fid, '%s   %4.2f   %4.2f   %4.2f   %s\n', idResult, test1result, test2result, ave, letterGrade); 
end
fclose(fid);