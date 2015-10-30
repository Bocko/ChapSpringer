function samplegrid = pareto_sample(front, n)

[alt, crit] = size(front);

normalized_front = normalize(front);

gengrid = cell(1,crit-1);
gengrid(1,:) = {repmat(linspace(0,1,n)',[1,crit-1])};
samplegrid = cell(1,numel(gengrid));
[samplegrid{:}] = ndgrid(gengrid{:});