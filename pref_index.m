function index = pref_index(data)

if k == 1
    tor = timeonroad(val, t_min, t_cong, commut_nb, road_capa, gamma);
    index = pref_tor(tor, thresholds(1,1), thresholds(1,2));
    return
elseif k == 2
    wake = pref_wake(val, thresholds(2,1), thresholds(2,2));
    late = pref_late(val, thresholds(3,1), thresholds(3,2));
    index = wake * late;
%     index = pref_earlylate(val+tor, thresholds(2,1), thresholds(2,2), thresholds(3,1), thresholds(3,2));
    return
% elseif k == 3
%     index = pref_late(val, thresholds(k,1), thresholds(k,2));
else
    index = 0;
    return
end
    