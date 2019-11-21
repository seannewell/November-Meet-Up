classdef ExamplePlugin < audioPlugin
    
    properties
       gain = 1; % [0 - 1.4] 
    end
    
    % Use this for the plugin interface/info
    properties (Constant)
        PluginInterface = audioPluginInterface(...
            'PluginName','Example Plugin',...
            'VendorName','Sean Newell',...
            'VendorVersion','1.0.0',...
            audioPluginParameter('gain',...         
            'DisplayName','GAIN!!!',...           
            'Mapping',{'lin',0,1.4}));
    end
    
    % Create functions within the methods scope
    methods
        function out = process(obj,in)
            out = obj.gain * in;
        end
    end
    
end