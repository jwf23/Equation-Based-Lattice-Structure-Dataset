classdef TPMSFunction < handle
    % BASE class for Mathematical Defined Functions
    % of particular importance, the Triply Periodic Minimal Surface (TPMS)

    properties (SetAccess = private)

    end

    methods

        function obj = TPMSFunction()
            % CONSTRUCTOR

        end

        function F = eval(obj, x, y, z)
            ME = MException('TPMSFunction:eval', 'not implemented');
            throw(ME)
        end

    end

end
