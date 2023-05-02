classdef TPMS < handle

    properties (SetAccess = public)
        func TPMSFunction % TPMSFunction object
        kind char % 'surface', 'exo', or 'endo'
        level double % level-set value for iso-contour
        thickness double % two-sided offset from level (if applicable)
    end

    methods

        function obj = TPMS(func, kind, level, thickness)
            obj.func = func;
            obj.kind = kind;
            obj.level = level;
            obj.thickness = thickness;
        end

        function f = eval(obj, x, y, z)
            % Evaluate the 'func' at the positions
            f = obj.func.eval(x, y, z);
        end

        function b = isInsideQ(obj, x, y, z)
            % Check if the points are within the region space of the 'func'
            f = obj.func.eval(x, y, z);
            b = obj.boolInsideQ(f, obj.level, obj.thickness);
        end

        function b = boolInsideQ(obj, f, level, thickness)
            % Check if the function values are within the region space of
            % the 'func'

            switch lower(obj.kind)
                case 'surface'
                    b = (f <= level + thickness) & (f >= level - thickness);
                case 'endo'
                    b = (f <= level);
                case 'exo'
                    b = (f >= level);
                otherwise
                    error('type of "%s" is unknown...', lower(char(obj.kind)));
            end

        end

    end

end
