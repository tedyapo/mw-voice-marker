// 100uH coil form for 28ga wire (0.321mm dia)
// 23 turns

dia = 100;
d2 = 65;
sides = 6;
len = 8;
flange_thickness = 1;
flange_len = 3;
thickness = 2;
epsilon = 0.1;

difference(){
  union(){
    difference(){
      union(){
        difference(){
          union(){
            cylinder($fn=173, d = dia+2*flange_len, h = flange_thickness);
            translate([0, 0, flange_thickness])
              cylinder($fn=173, d1 = dia+2*flange_len,
                       d2 = dia, h = flange_len);
            translate([0, 0, len+flange_thickness]){
              cylinder($fn=173, d1=dia,
                       d2 = dia+2*flange_len, h = flange_len);
            }
            translate([0, 0, len+flange_thickness+flange_len]){
              cylinder($fn=173, d=dia+2*flange_len, h = flange_thickness);
            }
          }
          translate([0, 0, -epsilon]){
            cylinder($fn=173, d = dia-2*thickness,
                     h = len+2*flange_len+2*flange_thickness+2*epsilon);
          }
        }
        
        difference(){
          cylinder($fn=173, d = dia, h = len+2*flange_thickness);
          translate([0, 0, -epsilon]){
            cylinder($fn=173, d = dia-2*thickness,
                     h = len+2*flange_thickness+2*epsilon);
          }
        }
        
        difference(){
          cylinder($fn=sides, d = d2, h = len+2*flange_thickness+flange_len);
          for (theta = [0:360/sides:360]){
            translate([0, 0, thickness+len/2])
              rotate([0, 90, theta+30]){
              translate([0, 0, 15])
                cylinder($fn=6, d=len+2, h=20);
            }
          }
          translate([0, 0, -epsilon]){
            cylinder($fn=sides, d = d2-2*thickness,
                     h = len+2*flange_thickness+2*epsilon+flange_len);
          }
        } 
      }
    }
    
    for (theta = [0:360/sides:360]){
      rotate([0, 0, theta]){
        translate([0, -thickness/2, 0]){
          difference(){
            cube([dia/2, thickness, len+1*flange_len+2*flange_thickness]);
            for (x = [0:dia/8:dia]){
              translate([x, thickness+epsilon, len/2+thickness])
                rotate([90, 30, 0])
                cylinder($fn=6, d = len+1, h = thickness+2*epsilon);
            }
          }
        }
      }
    }

  }    
  for (theta = [30:360/sides:360+30]){
    r1 =35;
    r2 = 60;
    dth =25;
    translate([0, 0, -epsilon])
      linear_extrude(height=len+2*epsilon+flange_len+2*flange_thickness){
      polygon(points=[[r1*cos(theta-dth), r1*sin(theta-dth)],
                      [r2*cos(theta-dth), r2*sin(theta-dth)],
                      [r2*cos(theta+dth), r2*sin(theta+dth)],
                      [r1*cos(theta+dth), r1*sin(theta+dth)]]);
    }
  }
}
