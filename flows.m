function [posflow, negflow, netflow] = flows(pi)

alt = length(pi);
posflow = zeros(alt,1);
negflow = zeros(alt,1);
netflow = zeros(alt,1);

for i=1:alt
    posflow(i) = 1/(alt-1) * sum(pi(i,:));
    negflow(i) = 1/(alt-1) * sum(pi(:,i));
    netflow(i) = posflow(i) - negflow(i);
end