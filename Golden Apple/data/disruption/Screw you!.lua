curentVersion = 0;

function onCreate()
   bit = string.gsub(version,"%.","")

   curentVersion = tonumber(bit)
end


function onCreatePost()
    makeLuaText('nameText', "Screw you!", 0, 5, 490);
    setTextAlignment('nameText', 'right');
    setTextSize('nameText', 17);
    setTextBorder('nameText', 1, '000000');
    setObjectCamera('nameText', 'camHUD');
    addLuaText('nameText');
end