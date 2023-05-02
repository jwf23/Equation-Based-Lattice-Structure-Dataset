classdef Neovius < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = Neovius(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = 3 * (cos(obj.kx * x) + cos(obj.ky * y) + cos(obj.kz * z)) + 4 * cos(obj.kx * x) .* cos(obj.ky * y) .* cos(obj.kz * z);
        end

    end

end
