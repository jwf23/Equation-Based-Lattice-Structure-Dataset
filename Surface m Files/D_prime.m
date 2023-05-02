classdef D_prime < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = D_prime(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = 0.5 * (cos(obj.kx * x) .* cos(obj.ky * y) .* cos(obj.kz * z) + cos(obj.kx * x) .* sin(obj.ky * y) .* sin(obj.kz * z) + sin(obj.kx * x) .* cos(obj.ky * y) .* sin(obj.kz * z) + sin(obj.kx * x) .* sin(obj.ky * y) .* cos(obj.kz * z)) - 0.5 * (sin(2 * obj.kx * x) .* sin(2 * obj.ky * y) + sin(2 * obj.ky * y) .* sin(2 * obj.kz * z) + sin(2 * obj.kz * z) .* sin(2 * obj.kx * x)) - 0.2;
        end

    end

end
