function normalized_front = normalize(front)

[alt, crit] = size(front);

normalized_front = zeros(alt,crit);

mins = zeros(1,crit);
maxs = zeros(1,crit);

for i=1:crit
    mins(i) = min(front(:,i));
    maxs(i) = max(front(:,i));
    normalized_front(:,i) = (front(:,i)-mins(i))/(maxs(i)-mins(i));
end