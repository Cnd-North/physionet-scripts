% History of Code from last couple days


%-- 2017-02-07, 11:11 AM --%
pwd
cd Matlab
[old_path]=which('rdsamp');if(~isempty(old_path)) rmpath(old_path(1:end-8)); end
wfdb_url='http://physionet.org/physiotools/matlab/wfdb-app-matlab/wfdb-app-toolbox-0-9-9.zip';
[filestr,status] = urlwrite(wfdb_url,'wfdb-app-toolbox-0-9-9.zip');%Octave users may have to download manually
unzip('wfdb-app-toolbox-0-9-9.zip');
cd wfdb-app-toolbox-0-9-9;cd mcode
addpath(pwd);savepath
[old_path]=which('rdsamp');if(~isempty(old_path)) rmpath(old_path(1:end-8)); end
wfdb_url='http://physionet.org/physiotools/matlab/wfdb-app-matlab/wfdb-app-toolbox-0-9-9.zip';
[filestr,status] = urlwrite(wfdb_url,'wfdb-app-toolbox-0-9-9.zip');
cd gerritvanrensburg
cd ..
cd Matlab
[old_path]=which('rdsamp');if(~isempty(old_path)) rmpath(old_path(1:end-8)); end
wfdb_url='http://physionet.org/physiotools/matlab/wfdb-app-matlab/wfdb-app-toolbox-0-9-9.zip';
[filestr,status] = urlwrite(wfdb_url,'wfdb-app-toolbox-0-9-9.zip');%Octave users may have to download manually
unzip('wfdb-app-toolbox-0-9-9.zip');
cd wfdb-app-toolbox-0-9-9;cd mcode
addpath(pwd);savepath
wfdbdemo



%-- 2017-02-07, 1:38 PM --%
cd Users/gerritvanrensburg/Matlab
wfdbdemo
[tm,sig]=rdsamp('mitdb/100',1);
plot(tm,sig);
diary on
diary off
1+1;
[tm,sig]=rdsamp('mitdb/100',1);
plot(tm,sig);
c = 1+1;
cheese
help diary
wfdbdesc ecg01
ann2rr -r ecg01 -a qrs >ecg01.rr1.txt
[rr,tm]=ann2rr('challenge/2013/set-a/a01','fqrs');
plot(rr);
help subplot
subplot(2,1,2) PLOT(rr);
subplot(2,1,2) plot(rr);
subplot(2,1,2)(rr);
subplot(2,1,2) (rr);
subplot(2,1,2);
plot(r));
plot(rr);
subplot(2,1,1);
plot(rr);
ann2rr -r sddb/30 -a ari -f 0 -t 90510 -v T -i s3 -V t -w -W >samples/SDDB_RR/SDC_1.txt
ann2rr -r sddb/30  -f 0 -t 90510 -v T -i s3 -V t -w -W >samples/SDDB_RR/SDC_1.txt
ann2rr -r sddb/30 >samples/SDDB_RR/SDC_1.txt
ann2rr -r sddb/30
ann2rr -r nsr2db/nsr001 -a ari -f 0 -t 90510 -v T -i s3 -V t -w -W >samples/SDDB_RR/SDC_1.txt
ann2rr -r nsr2db/nsr001 -w -W >samples/SDDB_RR/SDC_1.txt
ann2rr -r nsr2db/nsr001
[rr1, tm1]= ann2rr -r nsr2db/nsr001
[rr1,tm1]=ann2rr('nsr2db/nsr001','fqrs');
[rr1,tm1]=ann2rr('nsr2db/nsr001');
[rr1,tm1]=ann2rr( -r, nsr2db/nsr001)
[rr1,tm1]=ann2rr('-r', nsr2db/nsr001)
[rr1,tm1]=ann2rr('-r', nsr001)
[rr1,tm1]=ann2rr('nsr2db/nsr001');
[rr1,tm1]=ann2rr(-r, 'nsr2db/nsr001');
[rr1,tm1]=ann2rr('-r', 'nsr2db/nsr001');
[rr1,tm1]=ann2rr('-r', 'nsr2db/nsr001', 1);
help octave
help config
help config.inOctave
[tm,sig]=rdsamp('mitdb/100',1);
ann2rr help
[rr1,tm1]=ann2rr('-r','nsr2db/nsr001', '-a', nsr001,  );
[rr1,tm1]=ann2rr('-r','nsr2db/nsr001', '-a', nsr001  );
[rr1,tm1]=ann2rr(-r,nsr2db/nsr001,-a, nsr001  );
[rr1,tm1]=ann2rr('-r',nsr2db/nsr001,-a, nsr001  );
[rr1,tm1]=ann2rr('-r','nsr2db/nsr001',-a, nsr001  );
[rr1,tm1]=ann2rr('-r','nsr2db/nsr001','-a', 'nsr001'  );
ann2rr -r nsr2db/nsr001 -a ecg -f 0 -t end -v T -i s3 -V T -w -W >rr.txt
[rr1,tm1]= ann2rr -r nsr2db/nsr001 -a ecg -f 0 -t end -v T -i s3 -V T -w -W >rr.txt
[rr1,tm1] = ann2rr( -r nsr2db/nsr001 -a ecg -f 0 -t end -v T -i s3 -V T -w -W )
[rr1,tm1] = ann2rr( -r nsr2db/nsr001 -a ecg -f 0 -t end -v T -i s3 -V T -w -W );
[rr1,tm1] = ann2rr( '-r', nsr2db/nsr001 '-a', ecg -f 0 -t end -v T -i s3 -V T -w -W );
[rr1,tm1] = ann2rr( '-r', nsr2db/nsr001, '-a', ecg -f 0 -t end -v T -i s3 -V T -w -W );
[rr1,tm1] = ann2rr( '-r', nsr2db/nsr001, '-a', ecg, '-f', 0, '-t', end, '-v', T, '-i', s3, '-V', T, '-w', '-W' );,
[rr1,tm1] = ann2rr( '-r', 'nsr2db/nsr001', '-a', ecg, '-f', 0, '-t', end, '-v', T, '-i', s3, '-V', T, '-w', '-W' );,
[rr1,tm1] = ann2rr( '-r', 'nsr2db/nsr001', '-a', 'ecg', '-f', 0, '-t', end, '-v', T, '-i', s3, '-V', T, '-w', '-W' );,
[rr1,tm1] = ann2rr( '-r', nsr2db/nsr001, '-a', 'ecg', '-f', 0, '-t', end, '-v', T, '-i', s3, '-V', T, '-w', '-W' );,
ann2rr -r nsr2db/nsr001 -a ecg -f 0 -t end -v T -i s3 -V T -w -W >rr.txt
%-- 2017-02-09, 12:59 PM --%
man rdsamp
mean rdsamp
rdsamp
mean rdsamp
wfdbdesc ecg01
cd Users
wfdbdesc ecg01
[~,config]=wfdbloadlib()
[t, sig] = rdsamp('mghdb/mgh073',[1]);
[sigt] = rdsamp('mghdb/mgh073',[1]);
rc=physionetdb('nsrdb2',1);
rc=physionetdb('nsr2db',1);
wfdb2mat -r nsr001
ex1 = wfdb2mat -r nsr001
wfdb2mat -r nsr001
wfdb2mat -r nsr2db
[rr1,tm1] = ann2rr( '-r', 'nsrdb', '-a', ecg, '-f', 0, '-t', end, '-v', T, '-i', s3, '-V', T, '-w', '-W' );,
[rr1,tm1]=ann2rr('nsrdb');
[rr1,tm1]=ann2rr('-r', 'nsrdb/nsr001');
[rr1,tm1]=ann2rr('-r', 'nsrdb/16265');
plotATM('16265m')
wfdb2mat -r nsrdb/16265 -f 0 -t 91648 -l s1000000 >16265m.info
%-- 2017-02-10, 1:35 PM --%
r = rdsamp(?100s?, ?maxt?, ?:5?);
plot(r(:,1), r(:,2));
r = rdsamp('100s', 'maxt', ':5');
plot(r(:,1), r(:,2));
cd Users
cd gerritvanrensburg
cd wfdb-10.5.24
./psamples
/psamples
psamples
upsample
ann2rr
wfdb_argument={'-r','nsrdb/16265'};
ann2rr
ann2rr={'-r','nsrdb/16265'};
ann2rr={'-r','nsrdb/16265', '-a', cheese};
ann2rr={'-r','nsrdb/16265', '-a', 'cheese'};
get wfdb
getwfdb
getwb
getWfdbClass
plotATM
plotATM('nsrdb/16265' )
[t, g] = ann2rr ('-r', nsr2db/nsr001)
[t, g] = ann2rr ('-r', 'nsr2db/nsr001')
[t, g, f] = ann2rr ('-r', 'nsr2db/nsr001')
[t, g, f, h] = ann2rr ('-r', 'nsr2db/nsr001')
[t, g, f, h, i] = ann2rr ('-r', 'nsr2db/nsr001')
ann2rr ('-r', 'nsr2db/nsr001')
ann2rr ('-r', 'nsr2db/nsr001', -a, 'new-file')
ann2rr ('-r', 'nsr2db/nsr001', '-a', 'new-file')
[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,x,y,z] =  ann2rr ('-r', 'nsr2db/nsr001', '-a', 'new-file')
size(ann2rr ('-r', 'nsr2db/nsr001'))
size(ann2rr)
ann2rr ('-r', 'nsr2db/nsr001')
[a,b] =ann2rr ('-r', 'nsr2db/nsr001')
[rr,tm]=ann2rr('challenge/2013/set-a/a01','fqrs');
plot(rr,tm)
[a,b] =ann2rr ('-r', 'nsr2db/nsr001')
[tm,sig]=rdsamp('mitdb/100',1);
plot(tm,sig);
[a,b] =ann2rr ('-r', 'nsr2db/nsr001')
[tm,sig]=rdsamp('mitdb/100',1);
[a,b] =ann2rr ('-r', 'nsr2db/nsr001')
[a,b] =ann2rr ('-r', 'mitdb/100')
ann2rr
[a,b] =ann2rr ('-r', 'mitdb/100')
[tm,sig]=rdsamp('mitdb/100',1);
[a,b] =ann2rr ('-r', 'mitdb/100')
[a,b] =ann2rr ('mitdb/100')
[a,b] =ann2rr ('-r', 'mitdb/100')
[a,b] =ann2rr ('mitdb/100')
[a,b] =ann2rr ('mitdb/100', ecg)
[a,b] =ann2rr ('mitdb/100', 'ecg')
[a,b] =ann2rr ('-r', 'nsr2db/nsr001')
[a,b] =ann2rr ('-r', 'nsr2db/nsr001', '-a', 'ecg')
[rr,tm]=ann2rr('challenge/2013/set-a/a01','fqrs');
[a,b] =ann2rr ('nsr2db/nsr001', 'fqrs')
[a,b] =ann2rr ('nsr2db/nsr001', 'ecg')
ann2rr
clear
clc
ann2rr
[a,b] =ann2rr ('nsr2db/nsr001', 'ecg')
plot(a,b)
plot(b,a)
[a,b] =ihr ('nsr2db/nsr001', 'ecg')
loadlibrary(HRV)
loadlibrary()
loadlibrary(get_hrv)
loadlibrary(get_hrv.h)
loadlibrary(get_hrv.c)
GG_HRV
pwd
GG_HRV
pwd
cd ..
GG_HRV
mex setup
mex get_hrv
[a,b] =ann2rr ('nsr2db/nsr001', 'ecg') > nsr011.txt
[a, b, c] =ann2rr ('nsr2db/nsr001', 'ecg')
[a, b, ] =ann2rr ('nsr2db/nsr001', 'ecg')
GvR_HRV
plot(a,b)
plot(b,a)
uiimport(record.txt)
uiimport(record)
uiimport(record.txt)
uiimport('record.txt')
help dmlread()
help dlmread()
dmlread('record.txt')
dlmread('record.txt')
tline = fgetl(fid);
while ischar(tline)
disp(tline)
tline = fgetl(fid);
end
fclose(fid);
tline = fgetl(fid);
fid = fopen('fgetl.m');
fid = fopen('record.txt');
untitled3
GvR_HRV
help disp
GvR_HRV
isa(accessed_data,'string')
whos accessed_data
GvR_HRV
whos accessed_data
string = accessed_data
whos accessed_data
string = {accessed_data}
whos accessed_data
out = accessed_data{1}
whos out
GvR_HRV
disp(accessed_data);
disp(char_accessed_data);
GvR_HRV
%-- 2017-02-13, 6:16 PM --%
GvR_HRV
untiled3
untitled3
GvR_HRV
pwd
ls
cd mcode
ls
GvR_HRV



%-- 2017-02-13, 7:58 PM --%
GvR_HRV
readall
openExample('matlab/ReadAllDataInTabularTextDatastoreExample')
GvR_HRV
HRV_Stats
s = system('dir')
s = system('pwd')


%-- 2017-02-15, 8:27 AM --%
cd Users
cd gerritvanrensburg
cd DongLab
cd Coursera
cd ML assignments
cd ML Assignments
cd ML\Assignments
cd ML\ Assignments
cd ML/Assignments
cd ML\ Assignments
cd machine-learning-ex8
cd ex8
submit
gerrit@uvic.ca
Iey8AZKfYkjH3lWY
ex8
submit
Y
ex8_cofi
submit
Y


%-- 2017-02-15, 7:44 PM --%
s = system('pwd')
s = system('sh hrvScript.sh')
s = system('sh autoHrvScript.sh')
cd HRV
s = system('sh autoHrvScript.sh')
setenv
unix('echo $PATH')
system('echo $PATH')
export PATH="/Users/gerritvanrensburg/bin:/usr/local/sbin:$PATH"
unix('export PATH="/Users/gerritvanrensburg/bin:/usr/local/sbin:$PATH"')
system('echo $PATH')
%-- 2017-02-15, 8:00 PM --%
system('echo $PATH')
s = system('sh autoHrvScript.sh')
system('echo $PATH')
%-- 2017-02-16, 8:46 AM --%
addpath('/Users/gerritvanrensburg/HRV')
s = system('sh autoHrvScript.sh')
cd HRV
s = system('sh autoHrvScript.sh')
echo('$PATH')
userpath
path
unix('echo $PATH')
unix('export PATH="$PATH:/Users/gerritvanrensburg/Documents/MATLAB"')
unix('echo $PATH')
unix('echo pwd $PATH')
unix('echo $PATH pwd')
cd bin
ls
pwd
unix('export PATH="$PATH:/Users/gerritvanrensburg/bin"')
unix('echo $PATH pwd')
s = system('sh autoHrvScript.sh')
matlabroot
addpath([matlabroot '/Users/gerritvanrensburg/bin'])
s = system('sh autoHrvScript.sh')
unix('echo $PATH pwd')



%-- 2017-02-17, 11:01 AM --%
get_hrv
T = readtable(record.txt)
T = readtable(rrList.txt)
T = readtable('rrList.txt')
N = readtable('record.txt')
plot(T)
C = textscan('rrList.txt')
fileID = fopen('rrList.txt')
C = textscan(fileID, %s, %s)
C = textscan(fileID, %f, %s)
C = textscan(fileID, %f, %s);
C = textscan(fileID, %f64, %s);
C = textscan(fileID, %f64, %s)
C = textscan(fileID, '%f64, %s')
C = textscan(fileID, '%f64, %s, Delimiter')
C = textscan(fileID, '%f, %s, Delimiter')
C = textscan(fileID, '%f, %s,')
C = textscan(fileID, '%f, %s')
C = textscan(fileID, '%f32, %s')
sum(T)
sum(T,1)
T
sum(T, Var1)
sum(T, var)
summary(T)
mean(T.Var1)
mean(T.Var1(1:560))
T1 = T(1,1);
MT
length(T)
size(T)
MT
Count
MT
plot(Result)
MT
plot(Result)
statnn
MT
i
MT
sum((G.^2))
G.^2
sum(ans)
MT
G.^2
sum(ans)
help sum
MT
RMSSD = sqrt ( (sum((G.^2)) )
RMSSD = sqrt ( (sum((G.^2))
RMSSD = sqrt ( (sum((G.^2))))
MT



%-- 2017-02-20, 12:03 PM --%
help clear
help close
help clc
MT
rr2pp
help remap
help repmat
rr2pp
help repmat
rr2pp
help reshape
rr2pp
help strrep
rr2pp
help csvread
rr2pp
readTest
display(data);
readTest
help cell2mat
readTest
display ss
readTest
M
display(M);
display('M');
help cell2mat
M
temp=str2num(M)
help cell2array
help cell2arr
help cell
readTest
tt=cellstr(M)
temp=str2num(tt)
type(tt)
type tt
isa tt
isa 'tt'
isa M
whos M
whos tt
tabeTest
tableTest
M
readTest
M
test=[M{:}]
tt=str2num(test)
test=[M{1:3,1}]
test=[M{1,1}]
str2num(test)
help importdata
uiimport('rrlist.txt')
temp = table2num
temp = table2array
temp = table2array(rrList)
pointcare=[temp(1:length(temp)-1) temp(2:end)]
plot(pointcare)
plot(pointcare, "*")
plot(pointcare, '*')
pointcare
plot(pointcare[:,1],pointcare[:,2], '*')
plot(pointcare(:,1),pointcare(:,2), '*')
StressTest
uiimport('rrlist.txt')