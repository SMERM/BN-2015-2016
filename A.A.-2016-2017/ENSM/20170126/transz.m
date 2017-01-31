% -*- texinfo -*-
% @deftypefn {transz.m} {@var{Z} =} transz (@var{x}, @var{step})
% @cindex 2 z-transform
% performs a Z transform
%
% @tex
% $$
%    X(z) = \sum_{n = -\inf}^{\inf}{x(n) z^{-n}}
% $$
% @end tex
% @ifnottex
% @example
% @group
%          ----
%          \         -n
%   X(z) =  ) x(n) z
%          /
%          ----
% @end group
% @end example
% @end ifnottex
% @noindent
%
% of a hanning-windowed real function @var{x} over a complex plane and returns a matrix @var{Z}
% containing the results.
%
% @seealso{transz, hanning}
% @end deftypefn
%
function Z = transz(x, step)
	[nrows ncols] = size(x);
	limits = [-0.5*ncols*step 0.5*ncols*step];
	Z = pianoz(limits, limits, step);
	h = hanning(ncols)';
	xwin = x.*h;
	tz = zeros(size(Z));
	n = [1:size(xwin, 2)];

	for r = 1:size(Z, 2)
		for c = 1:size(Z, 1)
			zval = Z(r, c);
			zmenon = zval.^(-n);
			tz(r, c) = sum(xwin(n).*zmenon);
		end
	printf(".")
	fflush(stdout);
	end

	tz;
end
