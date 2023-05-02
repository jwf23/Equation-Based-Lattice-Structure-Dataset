classdef C_D < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = C_D(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = cos(3 * obj.kx * x + obj.ky * y) .* cos(obj.kz * z) - sin(3 * obj.kx * x - obj.ky * y) .* sin(obj.kz * z) + cos(obj.kx * x + 3 * obj.ky * y) .* cos(obj.kz * z) + sin(obj.kx * x - 3 * obj.ky * y) .* sin(obj.kz * z) + cos(obj.kx * x - obj.ky * y) .* cos(3 * obj.kz * z) - sin(obj.kx * x + obj.ky * y) .* sin(3 * obj.kz * z);
        end

    end

end
