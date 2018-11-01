<?xml version="1.0" encoding="UTF-8"?>
<ara>
    <bodysizerange>
        <if series = "any">
            <value>1/2 inlet pipe size to pipe size</value>
            <value>Equal to inlet pipe size</value>
        </if>
        <if series = "ara">
            <value>1/2 inlet pipe size to pipe size</value>
            <value>Its ara</value>
        </if>
        <if series = "ard">
            <value>2/2 inlet pipe size to pipe size</value>
            <value>Equal to inlet pipe size</value>
            <value>Its ard</value>
        </if>
    </bodysizerange>
    
    <bodymaterial>
        <if bodysizerange= "ara">
            <value>ANSI 150 Lb. Flanged Ends</value>
            <value>ANSI 300 Lb. Flanged Ends</value>
        </if>
    </bodymaterial>
    
    <packingtype>
    </packingtype>
    
    <ansileakageclass>
    </ansileakageclass>
    
    <trimmaterial></trimmaterial>
    
    <flowcharacteristics></flowcharacteristics>
    
    <flowdirection></flowdirection>
    
    <ansipressureclass>
    </ansipressureclass>

</ara>