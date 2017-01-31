% -*- texinfo -*-
% @deftypefn {pianoz.m} {@var{Z} =} pianoz (@var{rlimits}, @var{ilimits}, @var{step})
% @cindex 1 z-plane
% create a Z-plane filled up from complex values drawn upon @var{rlimits} and
% @var{ilimits} (two-member arrays with lo-hi values). @var{step} provides the step to
% be observed in those ranges.
%
% It returns the created Z-plane.
%
% @seealso{transz}
% @end deftypefn
%
function Z = pianoz(rlimits, ilimits, step)
	raxis = [rlimits(1):step:rlimits(2)-step];
	iaxis = [ilimits(1):step:ilimits(2)-step];
	Z = zeros(size(raxis, 2), size(iaxis, 2));

	for m = 1 : size(raxis, 2)
		for n = 1 : size(iaxis, 2)
			Z(m, n) = raxis(m) + i*iaxis(n);
		end
	end

	Z;
end
