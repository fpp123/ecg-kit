%USING_HG2 Determine if the HG2 graphics pipeline is used
%
%   tf = using_hg2(fig)
%
%IN:
%   fig - handle to the figure in question.
%
%OUT:
%   tf - boolean indicating whether the HG2 graphics pipeline is being used
%        (true) or not (false).

function tf = using_hg2(fig)
try
    if nargin < 1,  fig = figure('visible','off');  end
    tf = ~verLessThan('matlab','8.4.0');

catch
    tf = false;
end
if nargin < 1,  delete(fig);  end
end
