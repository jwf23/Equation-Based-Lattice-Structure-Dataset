classdef P_plus_C_P < TPMSFunction

    properties (SetAccess = public)
        kx double % period in x
        ky double % period in y
        kz double % period in z
    end

    methods

        function obj = P_plus_C_P(kx, ky, kz)
            obj.kx = kx;
            obj.ky = ky;
            obj.kz = kz;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 3D function
            %f = 0.35*(cos(obj.kx*x).*cos(obj.ky*y).*cos(obj.kz*z)) + 0.2*(cos(obj.kx*x) + cos(obj.ky*y) + cos(obj.kz*z)) + 0.2*(cos(2*obj.kx*x).*cos(2*obj.ky*y).*cos(2*obj.kz*z)) + 0.1*(cos(2*obj.kx*x) + cos(2*obj.ky*y) + cos(2*obj.kz*z)) + 0.05*(cos(3*obj.kx*x) + cos(3*obj.ky*y) + cos(3*obj.kz*z)) + 0.1*(cos(obj.kx*x).*cos(obj.ky*y) + cos(obj.ky*y).*cos(obj.kz*z) + cos(obj.kz*z).*cos(obj.kx*x));
            f = 0.3 * (cos(obj.kx * x) .* cos(obj.ky * y) .* cos(obj.kz * z)) + 0.2 * (cos(obj.kx * x) + cos(obj.ky * y) + cos(obj.kz * z)) + 0.1 * (cos(2 * obj.kx * x) .* cos(2 * obj.ky * y) .* cos(2 * obj.kz * z)) + 0.1 * (cos(2 * obj.kx * x) + cos(2 * obj.ky * y) + cos(2 * obj.kz * z)) + 0.05 * (cos(3 * obj.kx * x) + cos(3 * obj.ky * y) + cos(3 * obj.kz * z)) + 0.1 * (cos(obj.kx * x) .* cos(obj.ky * y) + cos(obj.ky * y) .* cos(obj.kz * z) + cos(obj.kz * z) .* cos(obj.kx * x));
        end

    end

end
