
% GCMEX An efficient graph-cut based energy minimization
%
% [LABELS ENERGY ENERGYAFTER] = 
%   GCMEX(CLASS, UNARY, PAIRWISE, LABELCOST,EXPANSION)
%
%   Runs a minimization starting with the labels for each node defined
%   by CLASS, with unary potentials UNARY and the structure of the
%   graph and pairwise potentials defined by PAIRWISE. LABELCOST
%   determines data costs in terms of the labels of adjacent nodes.
%
% Parameters:
%   CLASS:: A 1xN vector which specifies the initial labels of each
%     of the N nodes in the graph
%   UNARY:: A CxN matrix specifying the potentials (data term) for
%     each of the C possible classes at each of the N nodes.
%   PAIRWISE:: An NxN sparse matrix specifying the graph structure and
%     cost for each link between nodes in the graph.
%   LABELCOST:: A CxC matrix specifying the fixed label cost for the
%     labels of each adjacent node in the graph.
%   EXPANSION:: A 0-1 flag which determines if the swap or expansion
%     method is used to solve the minimization. 0 == swap, 
%     1 == expansion. If ommitted, defaults to swap.
%
% Outputs:
%   LABELS:: A 1xN vector of the final labels.
%   ENERGY:: The energy of the initial labeling contained in CLASS
%   ENERGYAFTER:: The energy of the final labels LABELS
%
% How do I know if I should use swap or expansion? From GC_README.txt: 