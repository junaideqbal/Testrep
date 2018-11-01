public class XMLCompilerInputFilter {
    //String used to compare it with xml file Elements
    String[] labelStrArr = new String[]{'series','bodysizerange','packingtype','ansileakageclass','trimmaterial','flowcharacteristics','flowdirection','ansipressureclass'};
    String seriesStr = 'series';
    String bodysizerangeStr = 'bodysizerange';
    String packingtypeStr = 'packingtype';
    String ansileakageclassStr = 'ansileakageclass';
    String trimmaterialStr = 'trimmaterial';
    String flowcharacteristicsStr = 'flowcharacteristics';
    String flowdirectionStr = 'flowdirection';
    String ansipressureclassStr = 'ansipressureclass';
    
    String seriesValue;
    String bodysizerangeValue;
    String packingtypeValue;
    String ansileakageclassValue;
    String trimmaterialValue;
    String flowcharacteristicsValue;
    String flowdirectionValue;
    String ansipressureclassValue;
    
    //stores the bosy of static xml resource
    String XMLFILEDATA;

    public XMLCompilerInputFilter(String FILENAME) {
        XMLFILEDATA = loadFile(FILENAME);

        //parse(XMLFILEDATA);
    }

    /** Loading XML File
     *  @return Data = XML File data
     **/
    private String loadFile(String FILENAME) {
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'ara_static' LIMIT 1];
		String data = sr.Body.toString();
		//system.debug(''+data);
        return data;
    }

    private DOM.XMLNode parse(String toParse) {
        DOM.Document doc = new DOM.Document();      
        try {
            doc.load(toParse);    
            DOM.XMLNode rootNode = doc.getRootElement();
            //return walkThrough(rootNode);
            //walkThrough(rootNode);
            return rootNode;
             
        } catch (System.XMLException e) {  // invalid XML
            //e.getMessage();
            return null;
        }
    }
    
    private void walkThrough(DOM.XMLNode node) {
        for(DOM.XMLNode child : node.getChildElements()) {
            
            if(child.getNodeType() == DOM.XMLNodeType.ELEMENT) {
                //system.debug('Field Name 1: '+child.getName());
                //system.debug('Condition count: '+child.getChildElements().size());
                
                for(DOM.XMLNode childCondition :child.getChildElements() ) {
                    //system.debug('Condition1: '+childCondition.getName());
                    //if(childCondition.getAttributeValue)
                    
                    if(childCondition.getName() == 'if') {
                        //attribute #0:series=any
                        //system.debug('attribute # 0 :' + childCondition.getAttributeKeyAt(0) + '=' + childCondition.getAttributeValue(childCondition.getAttributeKeyAt(0), childCondition.getAttributeKeyNsAt(0)));
                        system.debug('Its if condition');
                       /* if(series == childCondition.getAttributeKeyAt(0)) {
                            if(checkpicklistvalue == childCondition.getAttributeValue(childCondition.getAttributeKeyAt(0),  childCondition.getAttributeKeyNsAt(0))) {

                            }
                        }*/
                    }
                                        
                }
            }
        
            system.debug('Field Name2: '+node.getName());
        }
    
    }
    public void setFieldValues(String series, String bodysizerange, String packingtype, String ansileakageclass, String trimmaterial, String flowcharacteristics, String flowdirection, String ansipressureclass) {
        this.seriesValue = seriesValue;
        this.bodysizerangeValue = bodysizerangeValue;
        this.packingtypeValue = packingtypeValue;
        this.ansileakageclassValue = ansileakageclassValue;
        this.trimmaterialValue = trimmaterialValue;
        this.flowcharacteristicsValue = flowcharacteristicsValue;
        this.flowdirectionValue = flowdirectionValue;
        this.ansipressureclassValue = ansipressureclassValue;


    }

    public void applyValveStyleRules() {
        
    }
    public void applyFunctionRules() {

    }
    public void applySeriesRules() {
        
    }
    public void setSeriesValue(String val) {
        seriesValue = val;
    }
    public void applyBodySizeRangeRules() {
        //XMLFILEDATA;
        DOM.XMLNode node = parse(XMLFILEDATA);
        for(DOM.XMLNode child : node.getChildElements()) {
            
            if(child.getNodeType() == DOM.XMLNodeType.ELEMENT) {
                if( child.getName() == bodysizerangeStr){

                    for(DOM.XMLNode childCondition : child.getChildElements() ) {
                        //system.debug('Condition1: '+childCondition.getName());
                        //if(childCondition.getAttributeValue)
                        
                        if(childCondition.getName() == 'if') {
                            //attribute #0:series=any
                            //system.debug('attribute # 0 :' + childCondition.getAttributeKeyAt(0) + '=' + childCondition.getAttributeValue(childCondition.getAttributeKeyAt(0), childCondition.getAttributeKeyNsAt(0)));
                            
                            system.debug('Its if condition');


                            if(seriesStr == childCondition.getAttributeKeyAt(0)) {
                                if(seriesValue == childCondition.getAttributeValue(childCondition.getAttributeKeyAt(0),  childCondition.getAttributeKeyNsAt(0))) {
                                    for(DOM.XMLNode values : childCondition.getChildElements() ) {
                                        system.debug(values.getText());
                                        setBodySizeRangeSelectOptions(values.getText());
                                        system.debug('it has values');
                                    }
                                }
                            } else if(bodysizerangeValue == childCondition.getAttributeKeyAt(0)){

                            } else if(packingtypeValue == childCondition.getAttributeKeyAt(0)) {
                               
                            } else if(ansileakageclassValue == childCondition.getAttributeKeyAt(0)) {
                               
                            } else if(trimmaterialValue == childCondition.getAttributeKeyAt(0)) {
                               
                            } else if(flowcharacteristicsValue == childCondition.getAttributeKeyAt(0)) {
                               
                            } else if(flowdirectionValue == childCondition.getAttributeKeyAt(0)) {
                               
                            } else if(ansipressureclassValue == childCondition.getAttributeKeyAt(0)) {
                               
                            } else {
                                System.debug('not working');
                            }
                        }
                                            
                    }
                }
            }
            break;
            system.debug('Field Name2: '+node.getName());
        }

    }

    List<String> values = new List<String>();
    public void setBodySizeRangeSelectOptions(String value) {
        values.add(value);
    }
    public List<String> getBodySizeRangeSelectOptions() {
        return values;
    }
    public void applypackingtypeRules() {

    }
    public void applyansileakageclass() {

    }
    public void applytrimmaterial() {

    }
    public void applyflowcharacteristics() {

    }
    public void applyflowdirection() {

    }
    public void applyansipressureclass() {

    }

    /* private String walkThrough(DOM.XMLNode node) {
        String result = '\n';
        if (node.getNodeType() == DOM.XMLNodeType.COMMENT) {
            return 'Comment (' +  node.getText() + ')';
        }
        if (node.getNodeType() == DOM.XMLNodeType.TEXT) {
            return 'Text (' + node.getText() + ')';
        }
        if (node.getNodeType() == DOM.XMLNodeType.ELEMENT) {
            result += 'Element: ' + node.getName();
            if (node.getText().trim() != '') {
            result += ', text=' + node.getText().trim();
            }
            if (node.getAttributeCount() > 0) { 
            for (Integer i = 0; i< node.getAttributeCount(); i++ ) {
                result += ', attribute #' + i + ':' + node.getAttributeKeyAt(i) + '=' + node.getAttributeValue(node.getAttributeKeyAt(i), node.getAttributeKeyNsAt(i));
            }  
            }
            for (Dom.XMLNode child: node.getChildElements()) {
            result += walkThrough(child);
            }
            return result;
        }
        return '';  //should never reach here 
    } */

}