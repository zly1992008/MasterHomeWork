% Project 1
% Author: Lieyuan Zhou
% PatherID: 6177738
% All outputs will be wrote in part2_pseudo_temp.txt
% part2_pseudo_temp.txt is the final testing set

% Part2: Standard Hebb
% 2.2: Training the accosiator with the "Pesudo-Inverse" method.

% Initialization
clc
clear
close all
load PITRAIN.mat

fileID = fopen('part2_pseudo_temp.txt','w');
fprintf(fileID,'PatternName\tOutput\t\tWrongBits\t\tHit/Miss\t\n'); 

% Testing with set pt101-pt125 (Lowest noise set)
pt101 = PP(:,1);
fprintf(fileID,'%s\t',"pt101");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt101)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt102 = togglp1(pt101,4,1);
fprintf(fileID,'\n%s\t',"pt102");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt102)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt103 = togglp1(pt101,5,3);
fprintf(fileID,'\n%s\t',"pt103");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt103)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt104 = togglp1(pt101,2,4);
fprintf(fileID,'\n%s\t',"pt104");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt104)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt105 = togglp1(pt101,1,2);
fprintf(fileID,'\n%s\t',"pt105");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt105)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt106 = PP(:,6);
fprintf(fileID,'\n%s\t',"pt106");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt106)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt107 = togglp1(pt106,4,1);
fprintf(fileID,'\n%s\t',"pt107");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt107)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt108 = togglp1(pt106,5,3);
fprintf(fileID,'\n%s\t',"pt108");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt108)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt109 = togglp1(pt106,2,4);
fprintf(fileID,'\n%s\t',"pt109");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt109)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt110 = togglp1(pt106,1,2);
fprintf(fileID,'\n%s\t',"pt110");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt110)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt111 = PP(:,11);
fprintf(fileID,'\n%s\t',"pt111");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt111)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt112 = togglp1(pt111,4,1);
fprintf(fileID,'\n%s\t',"pt112");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt112)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt113 = togglp1(pt111,5,3);
fprintf(fileID,'\n%s\t',"pt113");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt113)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt114 = togglp1(pt111,2,4);
fprintf(fileID,'\n%s\t',"pt114");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt114)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt115 = togglp1(pt111,1,2);
fprintf(fileID,'\n%s\t',"pt115");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt115)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt116 = PP(:,16);
fprintf(fileID,'\n%s\t',"pt116");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt116)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt117 = togglp1(pt116,4,1);
fprintf(fileID,'\n%s\t',"pt117");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt117)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt118 = togglp1(pt116,5,3);
fprintf(fileID,'\n%s\t',"pt118");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt118)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt119 = togglp1(pt116,2,4);
fprintf(fileID,'\n%s\t',"pt119");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt119)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt120 = togglp1(pt116,1,2);
fprintf(fileID,'\n%s\t',"pt120");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt120)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt121 = PP(:,21);
fprintf(fileID,'\n%s\t',"pt121");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt121)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

pt122 = togglp1(pt121,4,1);
fprintf(fileID,'\n%s\t',"pt122");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt122)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt123 = togglp1(pt121,5,3);
fprintf(fileID,'\n%s\t',"pt123");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt123)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt124 = togglp1(pt121,2,4);
fprintf(fileID,'\n%s\t',"pt124");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt124)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt125 = togglp1(pt121,1,2);
fprintf(fileID,'\n%s\t',"pt125");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt125)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

% Testing with set pt201-pt225 (Medium noise set)
pt201 = PP(:,1);
fprintf(fileID,'\n%s\t',"pt201");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt201)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt202 = togglp1(pt102,3,2);
fprintf(fileID,'\n%s\t',"pt202");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt202)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt203 = togglp1(pt103,1,3);
fprintf(fileID,'\n%s\t',"pt203");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt203)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt204 = togglp1(pt104,3,3);
fprintf(fileID,'\n%s\t',"pt204");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt204)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt205 = togglp1(pt105,2,1);
fprintf(fileID,'\n%s\t',"pt205");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt205)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt206 = PP(:,6);
fprintf(fileID,'\n%s\t',"pt206");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt206)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt207 = togglp1(pt107,3,2);
fprintf(fileID,'\n%s\t',"pt207");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt207)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt208 = togglp1(pt108,1,3);
fprintf(fileID,'\n%s\t',"pt208");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt208)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt209 = togglp1(pt109,3,3);
fprintf(fileID,'\n%s\t',"pt209");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt209)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt210 = togglp1(pt110,2,1);
fprintf(fileID,'\n%s\t',"pt210");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt210)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt211 = PP(:,11);
fprintf(fileID,'\n%s\t',"pt211");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt211)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt212 = togglp1(pt112,3,2);
fprintf(fileID,'\n%s\t',"pt212");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt212)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt213 = togglp1(pt113,1,3);
fprintf(fileID,'\n%s\t',"pt213");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt213)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt214 = togglp1(pt114,3,3);
fprintf(fileID,'\n%s\t',"pt214");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt214)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt215 = togglp1(pt115,2,1);
fprintf(fileID,'\n%s\t',"pt215");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt215)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt216 = PP(:,16);
fprintf(fileID,'\n%s\t',"pt216");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt216)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt217 = togglp1(pt117,3,2);
fprintf(fileID,'\n%s\t',"pt217");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt217)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt218 = togglp1(pt118,1,3);
fprintf(fileID,'\n%s\t',"pt218");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt218)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt219 = togglp1(pt119,3,3);
fprintf(fileID,'\n%s\t',"pt219");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt219)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt220 = togglp1(pt120,2,1);
fprintf(fileID,'\n%s\t',"pt220");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt220)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt221 = PP(:,21);
fprintf(fileID,'\n%s\t',"pt221");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt221)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt222 = togglp1(pt122,3,2);
fprintf(fileID,'\n%s\t',"pt222");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt222)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt223 = togglp1(pt123,1,3);
fprintf(fileID,'\n%s\t',"pt223");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt223)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt224 = togglp1(pt124,3,3);
fprintf(fileID,'\n%s\t',"pt224");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt224)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt225 = togglp1(pt125,2,1);
fprintf(fileID,'\n%s\t',"pt225");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt225)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");

% Testing with set pt301-pt325 (High noise set)
pt301 = PP(:,1);
fprintf(fileID,'\n%s\t',"pt301");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt301)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt302 = togglp1(pt202,5,2);
fprintf(fileID,'\n%s\t',"pt302");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt302)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt303 = togglp1(pt203,3,3);
fprintf(fileID,'\n%s\t',"pt303");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt303)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt304 = togglp1(pt204,1,3);
fprintf(fileID,'\n%s\t',"pt304");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt304)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt305 = togglp1(pt205,5,1);
fprintf(fileID,'\n%s\t',"pt305");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt305)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt306 = PP(:,6);
fprintf(fileID,'\n%s\t',"pt306");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt306)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt307 = togglp1(pt207,5,2);
fprintf(fileID,'\n%s\t',"pt307");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt307)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt308 = togglp1(pt208,3,3);
fprintf(fileID,'\n%s\t',"pt308");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt308)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt309 = togglp1(pt209,1,3);
fprintf(fileID,'\n%s\t',"pt309");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt309)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt310 = togglp1(pt210,5,1);
fprintf(fileID,'\n%s\t',"pt310");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt310)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt311 = PP(:,11);
fprintf(fileID,'\n%s\t',"pt311");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt311)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt312 = togglp1(pt212,5,2);
fprintf(fileID,'\n%s\t',"pt312");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt312)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt313 = togglp1(pt213,3,3);
fprintf(fileID,'\n%s\t',"pt313");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt313)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt314 = togglp1(pt214,1,3);
fprintf(fileID,'\n%s\t',"pt314");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt314)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt315 = togglp1(pt215,5,1);
fprintf(fileID,'\n%s\t',"pt315");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt315)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt316 = PP(:,16);
fprintf(fileID,'\n%s\t',"pt316");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt316)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt317 = togglp1(pt217,5,2);
fprintf(fileID,'\n%s\t',"pt317");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt317)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt318 = togglp1(pt218,3,3);
fprintf(fileID,'\n%s\t',"pt318");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt318)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt319 = togglp1(pt219,1,3);
fprintf(fileID,'\n%s\t',"pt319");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt319)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt320 = togglp1(pt220,5,1);
fprintf(fileID,'\n%s\t',"pt320");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt320)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt321 = PP(:,21);
fprintf(fileID,'\n%s\t',"pt321");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt321)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt322 = togglp1(pt222,5,2);
fprintf(fileID,'\n%s\t',"pt322");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt322)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt323 = togglp1(pt223,3,3);
fprintf(fileID,'\n%s\t',"pt323");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt323)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt324 = togglp1(pt224,1,3);
fprintf(fileID,'\n%s\t',"pt324");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt324)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
pt325 = togglp1(pt225,5,1);
fprintf(fileID,'\n%s\t',"pt325");
fprintf(fileID,'\t[%2.1g,%2.1g,%2.1g]''\t',(pseudo_inverse(PP)*pt325)');  
fprintf(fileID,'\t%d\t',0);
fprintf(fileID,'\t%s\t',"Hit");
fclose(fileID);
