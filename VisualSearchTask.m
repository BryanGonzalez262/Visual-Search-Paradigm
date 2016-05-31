%% Assignment 3
%% Init
clear all; close all; clc;
%% Welcome & Directions
Display = figure('units','normalized','outerposition',[0 0 1 1],'color',[.2 0 1],'MenuBar','none'); %opens a full screen figure
axis off;hold on;
intro = text(.5, .5,'WELCOME TO THE EXPERIMENT','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
begin = text(.5, .3,'Press any key to begin...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
axis off;
text(.5, .8,'Your job is to spot the target in the display','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
text(.5, .5,'O','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',65,'FontName','Kokonor','color','r');
text(.5, .3,'If you see the target in the display, press the "A" key','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
text(.5, .2,'If you DO NOT see the target in the display, press the "L" key','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
text(.5, .1,'Press any key to begin...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',30,'FontName','Kokonor');
 pause;
 clf;
currentTrial = []; % creates a place for trial accuracy to go into
rt = [];
ii = 1;
while sum(currentTrial) < 20; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause; %wait for keyboard input 
    rt(ii) = toc;
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1; %if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrial(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1; %and the signal is not there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrial(ii) = 0; %response for current trial is wrong.
            end  
    %    elseif strcmp(CC,'l') ==0 && strcmp(CC,'a') ==0;        
     %       clf
      %      text(.5,.5, 'OOPS!! INVALID RESPONSE!','FontSize',30,'FontName','Kokonor','color','g');
       %     currentTrial(ii) = Nan;
        %    pause(.5);
        end
    hold off, clf;
       ii = ii+1 ;
end

%% Next Level
axis off;hold on;
text(.5, .5,'GREAT JOB!!!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'Now see if you can spot the target with more distractors','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
while sum(currentTrial) < 40; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic; %starts the stopwatch
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause; %wait for keyboard input
    rt(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1 %if response is yes
            if signalPresent == 2  %and the signal is there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrial(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1 %if response is no
            if signalPresent == 1 %and the signal is not there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrial(ii) = 0; %response for current trial is wrong.
            end  
        end
    hold off, clf;
       ii = ii+1 ;
end

%% Next Level -set size 12
axis off;hold on;
text(.5, .5,'GREAT JOB!!!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'see if you can spot the target with even MORE distractors','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
while sum(currentTrial) < 60; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic; %start the stopwatch
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause; %wait for keyboard input
    rt(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1; %if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrial(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1 ;%and the signal is not there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrial(ii) = 0; %response for current trial is wrong.
            end  
        end
    hold off, clf;
       ii = ii+1; 
end
%% Next Level - set size 16
axis off;hold on;
text(.5, .5,'GREAT JOB!!!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'see if you can spot the target with even MORE distractors','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
while sum(currentTrial) < 80; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic %starts the stopwatch
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g'); % put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause %wait for keyboard input
    rt(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1 ;%if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrial(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1 ;%and the signal is not there
                currentTrial(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrial(ii) = 0; %response for current trial is wrong.
            end  
        end
    hold off, clf;
       ii = ii+1; 
end
%% Instructions for conjunction
axis off;hold on;
text(.5, .5,'Well done Grasshopper','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'Now things will get interesting','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;axis off;
text(.5, .8,'Remember, your job is to spot the target in the display','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
text(.5, .5,'O','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',65,'FontName','Kokonor','color','r');
text(.5, .3,'If you see the target in the display, press the "A" key','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
text(.5, .2,'If you DO NOT see the target in the display, press the "L" key','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
text(.5, .1,'Press any key to begin...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',30,'FontName','Kokonor');
 pause;
 clf;axis off;
 %% Round 1 of Conjunctoin
 currentTrialConj = [];
 rtConj = [];
 ii = 1;
 while sum(currentTrialConj) < 20; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic; %starts a stopwatch
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause %wait for keyboard input
    rtConj(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1 ;%if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrialConj(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1; %and the signal is not there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrialConj(ii) = 0; %response for current trial is wrong.
            end  
    %    elseif strcmp(CC,'l') ==0 && strcmp(CC,'a') ==0;        
     %       clf
      %      text(.5,.5, 'OOPS!! INVALID RESPONSE!','FontSize',30,'FontName','Kokonor','color','g');
       %     currentTrial(ii) = Nan;
        %    pause(.5);
        end
    hold off, clf;
       ii = ii+1 ;
end
%% Round 2 of Conjunctoin
axis off;hold on;
text(.5, .5,'NICE!!!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'see if you can spot the target with even MORE distractors','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
 while sum(currentTrialConj) < 40; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic %start timer
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause; %wait for keyboard input
    rtConj(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1; %if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrialConj(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1; %and the signal is not there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrialConj(ii) = 0; %response for current trial is wrong.
            end  
    %    elseif strcmp(CC,'l') ==0 && strcmp(CC,'a') ==0;        
     %       clf
      %      text(.5,.5, 'OOPS!! INVALID RESPONSE!','FontSize',30,'FontName','Kokonor','color','g');
       %     currentTrial(ii) = Nan;
        %    pause(.5);
        end
    hold off, clf;
       ii = ii+1 ;
end
%% Round 3 of Conjunctoin - set size 12
axis off;hold on;
text(.5, .5,'NICE!!!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'see if you can spot the target with even MORE distractors','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
 while sum(currentTrialConj) < 60; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic; %start timer
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause %wait for keyboard input
    rtConj(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1; %if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrialConj(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1 ;%and the signal is not there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrialConj(ii) = 0; %response for current trial is wrong.
            end  
    %    elseif strcmp(CC,'l') ==0 && strcmp(CC,'a') ==0;        
     %       clf
      %      text(.5,.5, 'OOPS!! INVALID RESPONSE!','FontSize',30,'FontName','Kokonor','color','g');
       %     currentTrial(ii) = Nan;
        %    pause(.5);
        end
    hold off, clf;
       ii = ii+1 ;
 end
%% Round 4 of Conjunctoin - set size 16
axis off;hold on;
text(.5, .5,'NICE!!!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'see if you can spot the target with even MORE distractors','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to start the next round...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;
 while sum(currentTrialConj) < 80; %until one gets 20 correct
    signalPresent = randi(2) ;%flips a coin to determin if signal will be present
    tic; %start timer
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r'); % put a distractor in a random x and y coordinate
    axis off; hold on;
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','r');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    text(rand, rand, 'X','FontSize',30,'FontName','Kokonor','color','g');% put a distractor in a random x and y coordinate
    if signalPresent == 1 ;% if the signal is NOT present
        text(rand,rand,'O','FontSize',30,'FontName','Kokonor','color','g');%then put a distractor in a random x and y coordinate
    else text(rand, rand, 'O','FontSize',30,'FontName','Kokonor','color','r');%otherwise (signal IS present) put the signal in a random XY coordinate
    end
    pause %wait for keyboard input
    rtConj(ii) = toc; %end the stopwatch and recording RT for the iith trial
 CC = get(gcf,'CurrentCharacter');
        %if response is yes
        if strcmp(CC,'a')==1; %if response is yes
            if signalPresent == 2;  %and the signal is there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 1;%if response is yes and signal is NOT there
                currentTrialConj(ii)= 0; %response for current trial is wrong.
            end
            %if the response is no
        elseif strcmp(CC,'l') ==1; %if response is no
            if signalPresent == 1; %and the signal is not there
                currentTrialConj(ii) = 1; %current trial is correct
            elseif signalPresent == 2;%if the response is no and the signal IS there
                currentTrialConj(ii) = 0; %response for current trial is wrong.
            end  
    %    elseif strcmp(CC,'l') ==0 && strcmp(CC,'a') ==0;        
     %       clf
      %      text(.5,.5, 'OOPS!! INVALID RESPONSE!','FontSize',30,'FontName','Kokonor','color','g');
       %     currentTrial(ii) = Nan;
        %    pause(.5);
        end
    hold off, clf;
       ii = ii+1 ;
 end
axis off;hold on;
text(.5, .5,'CONGRATULATIONS HAWKEYE!','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
text(.5, .3,'You have finished this experiment','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',55,'FontName','Kokonor');
text(.5, .15,'Press any key to see your results...','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',40,'FontName','Kokonor');
pause;
clf;

 %% plotting the results and correlating
Results= figure('units','normalized','outerposition',[0 0 1 1],'color',[.2 0 1],'MenuBar','none'); %opens a full screen figure
subplot(1,2,1);
t = plot(rt)   ;                            %insert title
xlabel('POP-OUT Trials','FontSize',30,'FontName','Kokonor');%label X axis of popout plot                                                         %label x axis                                                     
ylabel('Reaction Time');   %label y axis of popout plot
subplot(1,2,2);
c = plot(rtConj);
xlabel('CONJUNCTION Trials','FontSize',30,'FontName','Kokonor') ;                                                       %label x axis                                                     
ylabel('Reaction Time')  ;
pause;
clf;
axis off;
text(.5, .5,'Thanks for playing :]','HorizontalAlignment','center','VerticalAlignment','middle','FontSize',75,'FontName','Kokonor');
mean(rt)
mean(rtConj)
b = corrcoef(rt(1,:),currentTrial(1,:))
bb = corrcoef(rtConj(1,:),currentTrialConj(1,:))
