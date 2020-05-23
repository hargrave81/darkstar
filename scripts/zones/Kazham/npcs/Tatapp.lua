-----------------------------------
-- Area: Kazham
--  NPC: Tatapp
-- Standard Merchant NPC
-----------------------------------
require("scripts/globals/pathfind");

local path =
{
    15.005042, -8.000000, -104.349953,
    14.694142, -8.000000, -103.382622,
    14.346356, -8.000000, -102.330627,
    14.005146, -8.000000, -101.348183,
    13.907293, -8.000000, -102.474396,
    14.114091, -8.000000, -103.460907,
    14.343062, -8.000000, -104.536835,
    16.370546, -8.000000, -114.304893,
    16.544558, -8.000000, -115.297646,
    16.652084, -8.000000, -116.295631,
    16.694906, -8.000000, -117.434761,
    16.700508, -8.000000, -118.538452,
    16.685726, -8.362834, -119.635414,
    16.455936, -10.261567, -127.570595,
    16.371193, -9.956211, -128.653427,
    16.192312, -9.927615, -129.725876,
    15.949818, -9.899237, -130.790192,
    15.680015, -9.930383, -131.843597,
    15.395848, -10.029854, -132.888367,
    14.880146, -10.260068, -134.708633,
    13.940835, -10.664452, -137.954254,
    13.683217, -10.835240, -139.065842,
    13.595861, -11.003948, -140.093765,
    13.651946, -10.705299, -141.201477,
    13.773430, -10.458088, -142.220947,
    14.041121, -10.295064, -143.333069,
    14.663477, -10.000000, -144.295776,
    15.515604, -10.000000, -144.964035,
    16.314928, -10.223488, -145.605728,
    17.261440, -10.345286, -145.936386,
    18.434967, -10.496312, -146.235184,
    19.626635, -10.649672, -146.574966,
    20.636623, -10.779653, -146.885742,
    21.810431, -10.930738, -147.245026,
    41.037498, -11.000000, -152.868652,
    42.064869, -11.000000, -153.066666,
    43.181644, -11.000000, -153.059830,
    44.193981, -11.000000, -152.844086,
    45.204891, -11.000000, -152.476288,
    46.130001, -11.000000, -152.076340,
    47.101921, -11.000000, -151.605576,
    48.074062, -11.000000, -151.108200,
    49.085625, -11.000000, -150.573853,
    55.112835, -11.000000, -147.289734,
    56.009495, -11.000000, -146.733871,
    56.723618, -11.000000, -146.025116,
    57.321293, -11.000000, -145.142792,
    57.783585, -11.250000, -144.098206,
    58.165600, -11.250000, -143.024185,
    58.480083, -11.250000, -141.965988,
    58.835060, -11.250000, -140.942154,
    59.320435, -11.250000, -139.902725,
    59.870998, -11.250000, -138.959778,
    60.482498, -11.250000, -138.040649,
    61.132069, -11.250000, -137.153336,
    61.798748, -11.250000, -136.296631,
    62.513489, -11.253850, -135.406036,
    64.148376, -12.006388, -133.421356,
    64.926682, -12.153858, -132.702820,
    65.840607, -12.510786, -132.062790,
    66.760040, -12.850430, -131.556686,
    67.768539, -13.011412, -131.048050,
    68.677528, -13.136667, -130.481155,
    69.450928, -13.120115, -129.589920,
    69.925560, -13.070724, -128.676956,
    70.264328, -13.240794, -127.551498,
    70.502907, -13.378080, -126.483635,
    70.705933, -13.531213, -125.293793,
    70.882706, -13.690935, -124.047539,
    71.007774, -13.819379, -123.054787,
    71.813164, -14.000000, -115.726456,
    71.988968, -14.000000, -114.665138,
    72.230286, -14.000000, -113.546974,
    72.525734, -14.000000, -112.400444,
    72.942375, -14.000000, -110.917877,
    74.564720, -14.000000, -105.528885,
    75.467377, -14.000000, -102.580017,
    75.725372, -14.000000, -101.585197,
    75.908707, -14.000000, -100.514595,
    75.981133, -14.064396, -99.500229,
    75.993034, -13.697124, -98.463615,
    75.958984, -13.337876, -97.450668,
    75.439690, -13.000000, -96.557312,
    74.492599, -13.000000, -96.034950,
    73.435051, -13.000000, -95.784882,
    72.353867, -13.000000, -95.664864,
    71.268593, -13.000000, -95.589096,
    70.181816, -13.000000, -95.537849,
    68.965187, -13.000000, -95.492210,
    60.461643, -13.250000, -95.250732,
    59.414639, -12.953995, -95.134903,
    58.399261, -12.920672, -94.753174,
    57.527779, -12.879326, -94.108803,
    56.795231, -12.798801, -93.310188,
    56.127377, -12.812515, -92.454437,
    55.491707, -12.990035, -91.585983,
    54.795376, -13.249212, -90.797066,
    54.252510, -12.983392, -89.899582,
    54.132359, -12.779223, -88.818153,
    54.292336, -12.663321, -87.758110,
    54.607620, -12.449183, -86.740074,
    54.999432, -12.244100, -85.728279,
    55.398830, -12.050034, -84.796448,
    55.820442, -11.853561, -83.867172,
    56.245693, -11.707920, -82.949188,
    58.531525, -11.078259, -78.130013,
    58.908638, -11.050494, -77.106491,
    59.153393, -11.021585, -76.017838,
    59.275970, -11.250000, -75.024338,
    59.367874, -11.250000, -73.940254,
    59.443375, -11.250000, -72.854927,
    59.727821, -11.250000, -68.099014,
    59.515472, -11.131024, -67.009804,
    58.715290, -11.000000, -66.276749,
    57.635883, -11.000000, -65.920776,
    56.549988, -11.000000, -65.748093,
    55.454430, -11.000000, -65.649788,
    54.368942, -11.000000, -65.575890,
    52.775639, -11.000000, -65.483658,
    35.187672, -11.000000, -64.736359,
    34.152725, -11.000000, -64.423264,
    33.359825, -11.000000, -63.605267,
    33.025291, -11.000000, -62.495285,
    32.889660, -11.000000, -61.400379,
    32.882694, -11.000000, -60.344677,
    32.944283, -11.000000, -59.294544,
    34.963348, -11.000000, -32.325993,
    35.024708, -11.000000, -31.239758,
    35.051041, -11.000000, -30.152113,
    35.035801, -11.181029, -27.749542,
    34.564014, -9.388963, -10.956874,
    34.451149, -9.053110, -9.945900,
    34.184814, -8.729055, -8.961948,
    33.568962, -8.434683, -8.141036,
    32.623096, -8.252226, -7.640914,
    31.593727, -8.137144, -7.356905,
    30.534199, -7.809586, -7.204587,
    29.420414, -7.471941, -7.213962,
    28.339115, -7.149956, -7.356305,
    27.256750, -6.833501, -7.566097,
    26.243299, -6.545853, -7.817299,
    25.281912, -6.280404, -8.231814,
    24.409597, -6.016464, -8.768848,
    23.535141, -5.619351, -9.442095,
    22.741117, -5.384661, -10.105258,
    21.927807, -5.245367, -10.821128,
    21.147293, -5.161991, -11.526694,
    15.214082, -4.000000, -17.004297,
    14.419584, -4.000000, -17.636061,
    13.458961, -4.000000, -18.158779,
    12.455530, -4.000000, -18.521858,
    11.330347, -4.250000, -18.780651,
    10.118030, -4.250000, -18.975561,
    8.942653, -4.250000, -19.117884,
    7.923566, -4.250000, -19.218039,
    6.593585, -4.250000, -19.344227,
    5.469834, -4.250000, -19.533274,
    4.261790, -4.250000, -19.896381,
    3.177907, -4.250000, -20.382805,
    2.187856, -4.000000, -20.905220,
    1.298735, -4.000000, -21.413086,
    -0.011548, -4.000000, -22.191364,
    -5.672250, -4.000000, -25.692520,
    -24.440950, -4.000000, -37.443745,
    -25.189728, -4.000000, -38.183887,
    -25.629408, -4.168334, -39.141701,
    -25.873989, -4.250000, -40.238976,
    -26.007105, -4.500000, -41.236519,
    -26.112728, -4.500000, -42.301708,
    -26.201090, -4.750000, -43.444443,
    -26.277060, -4.750000, -44.609795,
    -26.462490, -5.250000, -47.949528,
    -27.021929, -6.750000, -59.005863,
    -27.139404, -6.750000, -60.127247,
    -27.386074, -6.750000, -61.138996,
    -27.748066, -6.641468, -62.113667,
    -28.185287, -6.693056, -63.126755,
    -28.636660, -6.778347, -64.072296,
    -29.371180, -7.060127, -65.535736,
    -31.809622, -8.382057, -70.179474,
    -33.889652, -9.009554, -74.086304,
    -34.283657, -9.000000, -75.072922,
    -34.216805, -9.000000, -76.089775,
    -33.508991, -9.000000, -76.828690,
    -32.570038, -9.000000, -77.407265,
    -31.597225, -9.000000, -77.894348,
    -29.741163, -9.000000, -78.769386,
    -13.837473, -10.000000, -86.055939,
    -12.835108, -10.000000, -86.434494,
    -11.747759, -10.000000, -86.703239,
    -10.752914, -10.201037, -86.867828,
    -9.672615, -9.914025, -87.007553,
    -8.582029, -9.631344, -87.116394,
    -7.441304, -9.332726, -87.219048,
    -5.552025, -8.838206, -87.367615,
    -4.547285, -8.572382, -87.423958,
    -3.346037, -8.261422, -87.471710,
    4.405046, -8.000000, -87.651627,
    5.635734, -8.000000, -87.808228,
    6.702496, -8.000000, -88.253403,
    7.648390, -8.000000, -88.907516,
    8.469624, -8.000000, -89.650696,
    9.230433, -8.000000, -90.433952,
    9.939404, -8.000000, -91.216515,
    10.661294, -8.000000, -92.072548,
    11.280815, -8.000000, -92.960518,
    11.743221, -8.000000, -93.913345,
    12.131981, -8.000000, -94.980522,
    12.424179, -8.000000, -95.957581,
    12.685654, -8.000000, -96.955795,
    12.925197, -8.000000, -97.934807,
    13.195507, -8.000000, -99.116234,
    13.618339, -8.000000, -101.062759,
    16.298618, -8.000000, -113.958519,
    16.479734, -8.000000, -115.108047,
    16.590515, -8.000000, -116.226395,
    16.636118, -8.000000, -117.229286,
    16.654623, -8.000000, -118.265091,
    16.656944, -8.268586, -119.274567,
    16.635212, -8.722824, -121.010933,
    16.467291, -10.342713, -127.198563,
    16.389027, -9.964745, -128.333374,
    16.238678, -9.936684, -129.385773,
    16.029503, -9.910077, -130.383621,
    15.774967, -9.887359, -131.428879,
    15.502593, -9.975748, -132.462845
};

function onSpawn(npc)
    npc:initNpcAi();
    npc:setPos(dsp.path.first(path));
    onPath(npc);
end;

function onPath(npc)
    dsp.path.patrol(npc, path);
end;


function onTrade(player,npc,trade)
    -- item IDs
    -- 483       Broken Mithran Fishing Rod
    -- 22        Workbench
    -- 1008      Ten of Coins
    -- 1157      Sands of Silence
    -- 1158      Wandering Bulb
    -- 904       Giant Fish Bones
    -- 4599      Blackened Toad
    -- 905       Wyvern Skull
    -- 1147      Ancient Salt
    -- 4600      Lucky Egg
    local OpoOpoAndIStatus = player:getQuestStatus(OUTLANDS, dsp.quest.id.outlands.THE_OPO_OPO_AND_I);
    local progress = player:getCharVar("OPO_OPO_PROGRESS");
    local failed = player:getCharVar("OPO_OPO_FAILED");
    local goodtrade = trade:hasItemQty(4599,1);
    local badtrade = (trade:hasItemQty(483,1) or trade:hasItemQty(22,1) or trade:hasItemQty(1157,1) or trade:hasItemQty(1158,1) or trade:hasItemQty(904,1) or trade:hasItemQty(1008,1) or trade:hasItemQty(905,1) or trade:hasItemQty(1147,1) or trade:hasItemQty(4600,1));

    if (OpoOpoAndIStatus == QUEST_ACCEPTED) then
        if progress == 6 or failed == 7 then
            if goodtrade then
                player:startEvent(225);
            elseif badtrade then
                player:startEvent(235);
            end
        end
    end
end;

function onTrigger(player,npc)
    local OpoOpoAndIStatus = player:getQuestStatus(OUTLANDS, dsp.quest.id.outlands.THE_OPO_OPO_AND_I);
    local progress = player:getCharVar("OPO_OPO_PROGRESS");
    local failed = player:getCharVar("OPO_OPO_FAILED");
    local retry = player:getCharVar("OPO_OPO_RETRY");

    if (OpoOpoAndIStatus == QUEST_ACCEPTED) then
        if retry >= 1 then                          -- has failed on future npc so disregard previous successful trade
            player:startEvent(203);
            npc:wait();
        elseif (progress == 6 or failed == 7) then
                player:startEvent(212);  -- asking for blackened toad
        elseif (progress >= 7 or failed >= 8) then
            player:startEvent(248); -- happy with blackened toad
        end
    else
        player:startEvent(203);
        npc:wait();
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option,npc)

    if (csid == 225) then    -- correct trade, onto next opo
        if player:getCharVar("OPO_OPO_PROGRESS") == 6 then
            player:tradeComplete();
            player:setCharVar("OPO_OPO_PROGRESS",7);
            player:setCharVar("OPO_OPO_FAILED",0);
        else
            player:setCharVar("OPO_OPO_FAILED",8);
        end
    elseif (csid == 235) then              -- wrong trade, restart at first opo
        player:setCharVar("OPO_OPO_FAILED",1);
        player:setCharVar("OPO_OPO_RETRY",7);
    else
        npc:wait(0);
    end
end;
