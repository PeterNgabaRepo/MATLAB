fid = fopen('factorial.txt', 'w');
F = 1;
for i = 1:10
    F = i * F;
    fprintf(fid, '%i ! = %i\n', i, F);
end
fclose(fid);