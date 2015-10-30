function pi = pref_mat(A,weights,t_min, t_cong, commut_nb, road_capa, gamma,thresholds,mode)

alt = length(A);
% crit = length(weights);
pi=zeros(alt);

if mode == 'init'
    for i=1:alt
        for j = 1:alt
    %         for k=1:crit
                tor_i = timeonroad_init();
                index_tor_i = pref_tor(tor_i, thresholds(1,1), thresholds(1,2));

                wake_i = pref_wake(A(i), thresholds(2,1), thresholds(2,2));
                late_i = pref_late(180-(A(i)+tor_i), thresholds(3,1), thresholds(3,2));
                index_earlylate_i = wake_i * late_i;

                tor_j = timeonroad_init();
                index_tor_j = pref_tor(tor_j, thresholds(1,1), thresholds(1,2));

                wake_j = pref_wake(A(j), thresholds(2,1), thresholds(2,2));
                late_j = pref_late(180-(A(j)+tor_j), thresholds(3,1), thresholds(3,2));
                index_earlylate_j = wake_j * late_j;

                pi(i,j) = pi(i,j) + weights(1) * max(0,index_tor_i-index_tor_j) + weights(2) * max(0,index_earlylate_i-index_earlylate_j);
    %             pi(i,j) = pi(i,j) + weights(k) * max(0,pref_index(A(i),k,t_min, t_cong, commut_nb, road_capa, gamma,thresholds)-pref_index(A(j),k,t_min, t_cong, commut_nb, road_capa, gamma, thresholds));
    %         end
        end
    end
elseif mode == 'simu'
    return
else
    disp('Mode error: init or simu')
    return
end