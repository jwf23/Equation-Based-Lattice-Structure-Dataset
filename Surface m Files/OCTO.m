classdef OCTO < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = OCTO(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = 0.6 * (cos(obj.kx * x) .* cos(obj.ky * y) + cos(obj.ky * y) .* cos(obj.kz * z) + cos(obj.kz * z) .* cos(obj.kx * x)) - 0.4 * (cos(obj.kx * x) + cos(obj.ky * y) + cos(obj.kz * z)) + 0.25;
        end

    end

end
