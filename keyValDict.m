%% Create a dictionary with Key: Value type of structure
%%% Using containers.Map(key, value)
% Load the data they are all uint8 227x227x3 in a structure
load('lookupIMGread.mat');

%% Keys
keys = {
    'zeros'
    'ones'
    'twos'
    'threes'
    'fours'
    'fives'
    'sixes'
    'sevens'
    'eights'
    'nines'
    };

%% Values - Not Shifted
valuesUnshifted = {
    {mfcc_lookup.zeros}
    {mfcc_lookup.ones}
    {mfcc_lookup.twos}
    {mfcc_lookup.threes}
    {mfcc_lookup.fours}
    {mfcc_lookup.fives}
    {mfcc_lookup.sixes}
    {mfcc_lookup.sevens}
    {mfcc_lookup.eights}
    {mfcc_lookup.nines}
    };


%% Values - Shifted
valuesShifted = {
    {mfcc_lookup.ones}
    {mfcc_lookup.twos}
    {mfcc_lookup.threes}
    {mfcc_lookup.fours}
    {mfcc_lookup.fives}
    {mfcc_lookup.sixes}
    {mfcc_lookup.sevens}
    {mfcc_lookup.eights}
    {mfcc_lookup.nines}
    {mfcc_lookup.zeros}
    };
%% Bind the values to the keys

unshiftedDict = containers.Map(keys, valuesUnshifted);
shiftedDict = containers.Map(keys, valuesShifted);


%% Some testing

testUnshifted = unshiftedDict('zeros');
testShifted = shiftedDict('zeros');

testUnshifted = testUnshifted{1,1};
testShifted = testShifted{1,1};
disp('Left: Shows MFCCs for Zeros, Right: MFCCs for Ones')
imshow([testUnshifted testShifted])