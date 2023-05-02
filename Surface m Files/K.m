classdef K < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = K(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            f = 0.3 * (cos(obj.kx * x) + cos(obj.ky * y) + cos(obj.kz * z)) + 0.3 * (cos(obj.kx * x) .* cos(obj.ky * y) + cos(obj.ky * y) .* cos(obj.kz * z) + cos(obj.kz * z) .* cos(obj.kx * x)) - 0.4 * (cos(2 * obj.kx * x) + cos(2 * obj.ky * y) + cos(2 * obj.kz * z)) + 0.2;
            % f(x,y,z) = 0.6*(cos(obj.kx*x) + cos(obj.ky*y) + cos(obj.kz*z)) + 0.7*(cos(obj.kx*x).*cos(obj.ky*y) + cos(obj.ky*y).*cos(obj.kz*z) + cos(obj.kz*z).*cos(obj.kx*x)) - 0.9*(cos(2*obj.kx*x) + cos(2*obj.ky*y) + cos(2*obj.kz*z)) + 0.4;

        end

    end

end
