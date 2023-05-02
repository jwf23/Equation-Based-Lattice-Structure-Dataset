classdef D < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = D(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = sin(obj.kx * x) .* sin(obj.ky * y) .* sin(obj.kz * z) + sin(obj.kx * x) .* cos(obj.ky * y) .* cos(obj.kz * z) + cos(obj.kx * x) .* sin(obj.ky * y) .* cos(obj.kz * z) + cos(obj.kx * x) .* cos(obj.ky * y) .* sin(obj.kz * z);
        end

    end

end
