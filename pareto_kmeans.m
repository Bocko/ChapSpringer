function sample = pareto_kmeans(front,n)

% normalized_front = normalize(front);
% [idx, C] = kmeans(normalized_front,n);
[idx, sample] = kmeans(front,n);