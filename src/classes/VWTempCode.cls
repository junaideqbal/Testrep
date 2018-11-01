public class VWTempCode {
	
    public void orderCodeARB(String series, String valvetype, String bodySize, String bodymaterial, String endconnection, String trimstyle, String trimmaterial, String trimcv, String packingtype) {
        string orderCode = '';
        //Series
        if('ARB - 1/2 - 2 Sized Bodies' == series.trim()) {
            orderCode += 'ARB-';
        }
            //valvetype
             if('20 - Single Seat, Unbalanced 2- Way' == valvetype.trim()) {
                orderCode += '20';
            }
            
            else if('28 - Single Seat, Low-Flow 2-Way' == valvetype.trim()) {
                orderCode += '28';
            }
            
             else if('30 - 3-Way, Mixing' == valvetype.trim()) {
                orderCode += '30';
            }
            
             else if('32 - 3-Way Diverting' == valvetype.trim()) {
                orderCode += '32';
            }
            
            //bodysize
            if('050 - 1/2 Body Size' == bodySize.trim()) {
                orderCode += '050';
            }
            
            else if('075 - 3/4 Body Size' == bodySize.trim()) {
                    system.debug('here');
                orderCode += '075';
            } 
            
            else if('125 - 11/4 Body Size' == bodySize.trim()) {
                orderCode += '125';
            } 
            
            else if('100 - 1 Body Size' == bodySize.trim()) {
                orderCode += '100';
            } 
            
            else if('150 - 11/2 Body Size' == bodySize.trim()) {
                orderCode += '150';
            } 
            
            else if('200 - 2 Body Size' == bodySize.trim()) {
                orderCode += '200';
            } 
            
               
            //bodymaterial
            if('B - Bronze' == bodymaterial.trim()) {
                orderCode += 'B';
            }
            else if('F - CF8M Stainless Steel' == bodymaterial.trim()) {
                    orderCode += 'F';
                }
            
            //EndConnection
            if('S - Screwed, Female NPT Ends' == endconnection.trim()) {
                orderCode += 'S';
            } else if('B - Buttweld Ends' == endconnection.trim()) {
                    orderCode += 'B';
            }
            
            //Trimstyle
            if('E - Equal % Flow Characteristic' == trimstyle.trim() ) {
                orderCode += 'E';
            }
            
            else if('L-Linear Flow Characteristic' == trimstyle.trim() ) {
                    orderCode += 'L';
                }
            
             else if('M - Modified Linear' == trimstyle.trim()) {
                     orderCode += 'M';
                 }
            
            //trimmaterial
            if('S - 316 Stainless Steel' == trimmaterial.trim()) {
                orderCode += 'S';
            }
            
            else if('B - Bronze' == trimmaterial.trim()) {
                  orderCode += 'B';
                }
            
             else if('6 - Alloy 6 Wrapped / 316 SS (Stellite)' == trimmaterial.trim()) {
                  orderCode += '6';
                }
            
             else if('H - 17-4Ph Hardened Stainless Steel' == trimmaterial.trim()) {
                  orderCode += 'H';
                }
            
             else if('P - PEEK Seated 316 SS Trim' == trimmaterial.trim()) {
                  orderCode += 'P';
                }
            
            //trimcv
            if('F - Full Port' == trimcv.trim()) {
                orderCode += 'F';
            }
            
            else if('1 - One-Size-Reduced' == trimcv.trim()) {
                orderCode += '1';
            }
            
            else if('2 - Two-Sizes-Reduced' == trimcv.trim()) {
                orderCode += '2';
            }
            
            else if('3 - Three-Sizes-Reduced' == trimcv.trim()) {
                orderCode += '3';
            }
            
            else if('4 - Four-Sizes-Reduced' == trimcv.trim()) {
                orderCode += '4';
            }   
            
            //packingtype
            if('T - Teflon V-Ring Packing' == packingtype.trim()) {
                orderCode += 'T';
            }
            
            else if('V - Vacuum Service Teflon V-Ring Packing' == packingtype.trim()) {
                orderCode += 'V';
            }
            
             else if('L - EPDM Packing (Water or Water/Glycol Service)' == packingtype.trim()) {
                orderCode += 'L';
            }
            
             else if('G - Graphite Packing' == packingtype.trim() && 'B - Bronze' == bodymaterial.trim()) {
                orderCode += 'G';
            }
        system.debug('Order Code: '+orderCode);
    }
        
        
}