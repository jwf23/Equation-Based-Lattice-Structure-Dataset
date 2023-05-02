classdef W < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = W(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = cos(2 * obj.kx * x) .* cos(obj.ky * y) + cos(2 * obj.ky * y) .* cos(obj.kz * z) + cos(2 * obj.kz * z) .* cos(obj.kx * x) - (cos(obj.kx * x) .* cos(2 * obj.ky * y) + cos(obj.ky * y) .* cos(2 * obj.kz * z) + cos(obj.kz * z) .* cos(2 * obj.kx * x));
        end

    end

end
