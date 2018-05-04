<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="mw-voice-marker">
<packages>
<package name="4040_INDUCTOR">
<smd name="P$1" x="-1.4" y="0" dx="1.2" dy="3.7" layer="1"/>
<smd name="P$2" x="1.4" y="0" dx="1.2" dy="3.7" layer="1"/>
<wire x1="-2.2" y1="2" x2="2.2" y2="2" width="0.127" layer="21"/>
<wire x1="2.2" y1="2" x2="2.2" y2="-2" width="0.127" layer="21"/>
<wire x1="2.2" y1="-2" x2="-2.2" y2="-2" width="0.127" layer="21"/>
<wire x1="-2.2" y1="-2" x2="-2.2" y2="2" width="0.127" layer="21"/>
</package>
<package name="C50X100">
<pad name="P$1" x="-1.27" y="0" drill="0.7" diameter="1.27" shape="octagon"/>
<pad name="P$2" x="1.27" y="0" drill="0.7" diameter="1.27" shape="octagon"/>
<wire x1="-0.9525" y1="0.635" x2="0.9525" y2="0.635" width="0.127" layer="21"/>
<wire x1="-0.9525" y1="-0.635" x2="0.9525" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0.3175" x2="-0.3175" y2="-0.3175" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0.3175" x2="0.3175" y2="-0.3175" width="0.127" layer="21"/>
</package>
<package name="R_0.25W">
<pad name="P$1" x="-5.08" y="0" drill="0.7" diameter="1.4224" shape="octagon"/>
<pad name="P$2" x="5.08" y="0" drill="0.7" diameter="1.4224" shape="octagon"/>
<wire x1="3.175" y1="1.27" x2="-3.175" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.254" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.175" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="0" x2="3.175" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.175" y1="0" x2="-4.1275" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="0" x2="4.1275" y2="0" width="0.254" layer="21"/>
</package>
<package name="C10MMX7.5">
<pad name="P$1" x="-3.75" y="0" drill="0.6" diameter="1.4224" shape="octagon"/>
<pad name="P$2" x="3.75" y="0" drill="0.6" diameter="1.4224" shape="octagon"/>
<wire x1="-5.2" y1="-2.2" x2="5.2" y2="-2.2" width="0.127" layer="21"/>
<wire x1="5.2" y1="-2.2" x2="5.2" y2="2.2" width="0.127" layer="21"/>
<wire x1="5.2" y1="2.2" x2="-5.2" y2="2.2" width="0.127" layer="21"/>
<wire x1="-5.2" y1="2.2" x2="-5.2" y2="-2.2" width="0.127" layer="21"/>
<wire x1="-2.5" y1="0" x2="-0.5" y2="0" width="0.127" layer="21"/>
<wire x1="-0.5" y1="0" x2="-0.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="0" x2="-0.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="1.5" x2="0.5" y2="0" width="0.127" layer="21"/>
<wire x1="0.5" y1="0" x2="0.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="0" x2="2.5" y2="0" width="0.127" layer="21"/>
<text x="-2.54" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="L_VERTICAL">
<pad name="P$1" x="0" y="0" drill="0.75" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="5.08" y="0" drill="0.75" diameter="1.778" shape="octagon"/>
<circle x="0" y="0" radius="1.905" width="0.127" layer="21"/>
<wire x1="1.905" y1="0" x2="3.81" y2="0" width="0.127" layer="21"/>
</package>
<package name="L0.4X0.6">
<pad name="P$1" x="-7.62" y="0" drill="0.75" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="7.62" y="0" drill="0.75" diameter="1.778" shape="octagon"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="0" width="0.127" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="5.08" y2="-1.905" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0" width="0.127" layer="21"/>
<wire x1="5.08" y1="0" x2="5.08" y2="1.905" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.905" x2="-5.08" y2="1.905" width="0.127" layer="21"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.127" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.127" layer="21"/>
<text x="-3.81" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="VGA_PCB_MALE">
<pad name="1" x="-4.33" y="2.54" drill="1.2" shape="octagon"/>
<pad name="2" x="-2.04" y="2.54" drill="1.2" shape="octagon"/>
<pad name="3" x="0.25" y="2.54" drill="1.2" shape="octagon"/>
<pad name="4" x="2.54" y="2.54" drill="1.2" shape="octagon"/>
<pad name="5" x="4.83" y="2.54" drill="1.2" shape="octagon"/>
<pad name="11" x="-4.33" y="-2.54" drill="1.2" shape="octagon"/>
<pad name="12" x="-2.04" y="-2.54" drill="1.2" shape="octagon"/>
<pad name="13" x="0.25" y="-2.54" drill="1.2" shape="octagon"/>
<pad name="14" x="2.54" y="-2.54" drill="1.2" shape="octagon"/>
<pad name="15" x="4.83" y="-2.54" drill="1.2" shape="octagon"/>
<pad name="6" x="-5.475" y="0" drill="1.2" shape="octagon"/>
<pad name="7" x="-3.185" y="0" drill="1.2" shape="octagon"/>
<pad name="8" x="-0.895" y="0" drill="1.2" shape="octagon"/>
<pad name="9" x="1.395" y="0" drill="1.2" shape="octagon"/>
<pad name="10" x="3.685" y="0" drill="1.2" shape="octagon"/>
<wire x1="-15.405" y1="-11.43" x2="15.405" y2="-11.43" width="0.127" layer="21"/>
<wire x1="-15.405" y1="4.77" x2="15.405" y2="4.77" width="0.127" layer="21"/>
<wire x1="-15.405" y1="4.77" x2="-15.405" y2="-11.43" width="0.127" layer="21"/>
<wire x1="15.405" y1="4.77" x2="15.405" y2="-11.43" width="0.127" layer="21"/>
<wire x1="-8.5" y1="-11.45" x2="-8.5" y2="-16.185" width="0.127" layer="21"/>
<wire x1="-8.5" y1="-16.185" x2="-7.355" y2="-17.33" width="0.127" layer="21" curve="90"/>
<wire x1="-7.355" y1="-17.33" x2="7.355" y2="-17.33" width="0.127" layer="21"/>
<wire x1="7.355" y1="-17.33" x2="8.5" y2="-16.185" width="0.127" layer="21" curve="90"/>
<wire x1="8.5" y1="-16.185" x2="8.5" y2="-11.45" width="0.127" layer="21"/>
<pad name="TAB@1" x="-12.5" y="0" drill="3.1" diameter="4.5"/>
<pad name="TAB@2" x="12.5" y="0" drill="3.1" diameter="4.5"/>
</package>
<package name="0805">
<smd name="P$1" x="-0.95" y="0" dx="0.9" dy="1.3" layer="1"/>
<smd name="P$2" x="0.95" y="0" dx="0.9" dy="1.3" layer="1"/>
<wire x1="-1.5025" y1="0.925" x2="-1.5025" y2="-0.925" width="0.127" layer="21"/>
<wire x1="-1.5025" y1="-0.925" x2="1.5025" y2="-0.925" width="0.127" layer="21"/>
<wire x1="1.5025" y1="-0.925" x2="1.5025" y2="0.925" width="0.127" layer="21"/>
<wire x1="1.5025" y1="0.925" x2="-1.5025" y2="0.925" width="0.127" layer="21"/>
<text x="2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0805">
<smd name="P$1" x="-0.875" y="0" dx="1.1" dy="1.4" layer="1"/>
<smd name="P$2" x="0.875" y="0" dx="1.1" dy="1.4" layer="1"/>
<wire x1="-1.6" y1="0.9" x2="1.6" y2="0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="0.9" x2="1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="-0.9" x2="-1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-0.9" x2="-1.6" y2="0.9" width="0.127" layer="21"/>
<text x="2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="EDGE_LAUNCH_RF_CON">
<wire x1="-5.5" y1="4.75" x2="-5.5" y2="3.25" width="0.127" layer="51"/>
<wire x1="-5.5" y1="3.25" x2="0" y2="3.25" width="0.127" layer="51"/>
<wire x1="0" y1="4.75" x2="-5.5" y2="4.75" width="0.127" layer="51"/>
<wire x1="0" y1="4.75" x2="1.5" y2="4.75" width="0.127" layer="21"/>
<wire x1="1.5" y1="4.75" x2="1.5" y2="2.625" width="0.127" layer="21"/>
<wire x1="1.5" y1="2.625" x2="1.5" y2="-2.625" width="0.127" layer="21"/>
<wire x1="1.5" y1="-2.625" x2="1.5" y2="-4.75" width="0.127" layer="21"/>
<wire x1="1.5" y1="-4.75" x2="0" y2="-4.75" width="0.127" layer="21"/>
<wire x1="0" y1="-4.75" x2="0" y2="4.75" width="0.127" layer="21"/>
<wire x1="0" y1="-3.25" x2="-5.5" y2="-3.25" width="0.127" layer="51"/>
<wire x1="-5.5" y1="-3.25" x2="-5.5" y2="-4.75" width="0.127" layer="51"/>
<wire x1="-5.5" y1="-4.75" x2="0" y2="-4.75" width="0.127" layer="51"/>
<wire x1="1.5" y1="2.625" x2="9" y2="2.625" width="0.127" layer="21"/>
<wire x1="1.5" y1="-2.625" x2="7.875" y2="-2.625" width="0.127" layer="21"/>
<wire x1="9" y1="2.625" x2="9" y2="-2.625" width="0.127" layer="21"/>
<wire x1="9" y1="-2.625" x2="8" y2="-2.625" width="0.127" layer="21"/>
<wire x1="4.375" y1="2.875" x2="4.75" y2="-2.875" width="0.127" layer="21"/>
<wire x1="5" y1="2.875" x2="5.375" y2="-2.875" width="0.127" layer="21"/>
<wire x1="5.625" y1="2.875" x2="6" y2="-2.875" width="0.127" layer="21"/>
<wire x1="6.25" y1="2.875" x2="6.625" y2="-2.875" width="0.127" layer="21"/>
<wire x1="6.875" y1="2.875" x2="7.25" y2="-2.875" width="0.127" layer="21"/>
<wire x1="7.5" y1="2.875" x2="7.875" y2="-2.875" width="0.127" layer="21"/>
<wire x1="0" y1="0.375" x2="-5.5" y2="0.375" width="0.127" layer="51"/>
<wire x1="-5.5" y1="0.375" x2="-5.5" y2="-0.375" width="0.127" layer="51"/>
<wire x1="-5.5" y1="-0.375" x2="0" y2="-0.375" width="0.127" layer="51"/>
<smd name="CENTER" x="-2.875" y="0" dx="1.0414" dy="5.715" layer="1" rot="R90"/>
<smd name="SHIELD@1" x="-3.175" y="-4.1275" dx="2.54" dy="6.35" layer="1" rot="R90" thermals="no"/>
<smd name="SHIELD@2" x="-3.175" y="4.1275" dx="2.54" dy="6.35" layer="1" rot="R90" thermals="no"/>
<polygon width="0.2032" layer="1">
<vertex x="0" y="6.985"/>
<vertex x="0" y="0.8255"/>
<vertex x="-6.35" y="0.8255"/>
<vertex x="-6.35" y="6.985"/>
</polygon>
<polygon width="0.2032" layer="1">
<vertex x="-6.35" y="-0.8255"/>
<vertex x="0" y="-0.8255"/>
<vertex x="0" y="-6.985"/>
<vertex x="-6.35" y="-6.985"/>
</polygon>
<pad name="GND@3" x="-1.27" y="1.5875" drill="0.35" thermals="no"/>
<pad name="GND@2" x="-3.175" y="1.5875" drill="0.35" thermals="no"/>
<pad name="GND@1" x="-5.08" y="1.5875" drill="0.35" thermals="no"/>
<pad name="GND@5" x="-3.175" y="-1.5875" drill="0.35" thermals="no"/>
<pad name="GND@6" x="-1.27" y="-1.5875" drill="0.35" thermals="no"/>
<pad name="GND@4" x="-5.08" y="-1.5875" drill="0.35" thermals="no"/>
<pad name="GND@7" x="-5.08" y="6.35" drill="0.35" thermals="no"/>
<pad name="GND@8" x="-3.175" y="6.35" drill="0.35" thermals="no"/>
<pad name="GND@9" x="-1.27" y="6.35" drill="0.35" thermals="no"/>
<pad name="GND@10" x="-5.08" y="-6.35" drill="0.35" thermals="no"/>
<pad name="GND@11" x="-3.175" y="-6.35" drill="0.35" thermals="no"/>
<pad name="GND@12" x="-1.27" y="-6.35" drill="0.35" thermals="no"/>
</package>
</packages>
<symbols>
<symbol name="L-US">
<wire x1="0" y1="5.08" x2="1.27" y2="3.81" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="3.81" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="90"/>
<text x="-1.27" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="1" x="0" y="7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
<symbol name="C">
<pin name="P$1" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<pin name="P$2" x="0" y="5.08" visible="off" length="short" rot="R270"/>
<wire x1="-2.54" y1="0.635" x2="0" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.635" x2="2.54" y2="0.635" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.635" x2="0" y2="-0.635" width="0.254" layer="94"/>
<wire x1="0" y1="-0.635" x2="-2.54" y2="-0.635" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="-0.635" x2="0" y2="-2.54" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="5.08" y="2.54" size="1.778" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="R">
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="0" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P$3" x="0" y="5.08" visible="off" length="short" rot="R270"/>
<pin name="P$4" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.905" x2="-1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.905" x2="0" y2="-2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="GND">
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-3.81" x2="1.905" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-5.08" x2="0.635" y2="-5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="VGA">
<pin name="BGND" x="-17.78" y="10.16" length="middle"/>
<pin name="KEY" x="-17.78" y="5.08" length="middle"/>
<pin name="ID0" x="-17.78" y="-25.4" length="middle"/>
<pin name="HSYNC" x="-17.78" y="-5.08" length="middle"/>
<pin name="VSYNC" x="-17.78" y="-10.16" length="middle"/>
<pin name="SDA" x="-17.78" y="-15.24" length="middle"/>
<pin name="SCL" x="-17.78" y="-20.32" length="middle"/>
<pin name="RES" x="-17.78" y="0" length="middle"/>
<pin name="BLUE" x="-17.78" y="15.24" length="middle"/>
<pin name="GGND" x="-17.78" y="20.32" length="middle"/>
<pin name="GREEN" x="-17.78" y="25.4" length="middle"/>
<pin name="GND" x="-17.78" y="-30.48" length="middle"/>
<pin name="RGND" x="-17.78" y="30.48" length="middle"/>
<pin name="RED" x="-17.78" y="35.56" length="middle"/>
<pin name="SGND" x="-17.78" y="-35.56" length="middle"/>
<wire x1="-12.7" y1="38.1" x2="-12.7" y2="-38.1" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-38.1" x2="7.62" y2="-38.1" width="0.254" layer="94"/>
<wire x1="7.62" y1="-38.1" x2="7.62" y2="38.1" width="0.254" layer="94"/>
<wire x1="7.62" y1="38.1" x2="-12.7" y2="38.1" width="0.254" layer="94"/>
<text x="12.7" y="35.56" size="1.27" layer="95">&gt;NAME</text>
<text x="12.7" y="33.02" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="COAX_JACK">
<pin name="CENTER" x="-7.62" y="0" visible="off" length="middle"/>
<pin name="SHIELD" x="0" y="-10.16" visible="off" length="middle" rot="R90"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="-2.54" width="0.254" layer="94" curve="-292.619865"/>
<circle x="0" y="0" radius="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-4.445" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="5.08" y="5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="5.08" y="2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="INDUCTOR" prefix="L" uservalue="yes">
<gates>
<gate name="G$1" symbol="L-US" x="0" y="0"/>
</gates>
<devices>
<device name="4040" package="4040_INDUCTOR">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="L_VERTICAL">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="L0.4X0.6" package="L0.4X0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C50X100">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10X7.5MM" package="C10MMX7.5">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="" package="R_0.25W">
<connects>
<connect gate="G$1" pin="P$3" pad="P$1"/>
<connect gate="G$1" pin="P$4" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="R0805">
<connects>
<connect gate="G$1" pin="P$3" pad="P$1"/>
<connect gate="G$1" pin="P$4" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="0" y="2.54"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VGA_DB15" prefix="J">
<gates>
<gate name="G$1" symbol="VGA" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="VGA_PCB_MALE">
<connects>
<connect gate="G$1" pin="BGND" pad="8"/>
<connect gate="G$1" pin="BLUE" pad="3"/>
<connect gate="G$1" pin="GGND" pad="7"/>
<connect gate="G$1" pin="GND" pad="5 TAB@1 TAB@2"/>
<connect gate="G$1" pin="GREEN" pad="2"/>
<connect gate="G$1" pin="HSYNC" pad="13"/>
<connect gate="G$1" pin="ID0" pad="11"/>
<connect gate="G$1" pin="KEY" pad="9"/>
<connect gate="G$1" pin="RED" pad="1"/>
<connect gate="G$1" pin="RES" pad="4"/>
<connect gate="G$1" pin="RGND" pad="6"/>
<connect gate="G$1" pin="SCL" pad="15"/>
<connect gate="G$1" pin="SDA" pad="12"/>
<connect gate="G$1" pin="SGND" pad="10"/>
<connect gate="G$1" pin="VSYNC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="EDGE_LAUNCH_JACK" prefix="J" uservalue="yes">
<gates>
<gate name="G$1" symbol="COAX_JACK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="EDGE_LAUNCH_RF_CON">
<connects>
<connect gate="G$1" pin="CENTER" pad="CENTER"/>
<connect gate="G$1" pin="SHIELD" pad="GND@1 GND@2 GND@3 GND@4 GND@5 GND@6 GND@7 GND@8 GND@9 GND@10 GND@11 GND@12 SHIELD@1 SHIELD@2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="mw-voice-marker" deviceset="INDUCTOR" device="L0.4X0.6" value="10u"/>
<part name="U$2" library="mw-voice-marker" deviceset="INDUCTOR" device="" value="10u"/>
<part name="U$3" library="mw-voice-marker" deviceset="INDUCTOR" device="L0.4X0.6" value="10u"/>
<part name="C1" library="mw-voice-marker" deviceset="C" device="0805" value="2.7n"/>
<part name="C2" library="mw-voice-marker" deviceset="C" device="0805" value="2.7n"/>
<part name="C3" library="mw-voice-marker" deviceset="C" device="0805" value="1.5n"/>
<part name="C4" library="mw-voice-marker" deviceset="C" device="0805" value="1.5n"/>
<part name="U$4" library="mw-voice-marker" deviceset="R" device="0805" value="420"/>
<part name="U$5" library="mw-voice-marker" deviceset="R" device="0805" value="27"/>
<part name="U$6" library="mw-voice-marker" deviceset="R" device="0805" value="420"/>
<part name="U$7" library="mw-voice-marker" deviceset="R" device="0805" value="420"/>
<part name="U$8" library="mw-voice-marker" deviceset="R" device="0805" value="27"/>
<part name="U$9" library="mw-voice-marker" deviceset="R" device="0805" value="420"/>
<part name="U$10" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$11" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$12" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$13" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$14" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$15" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$16" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$17" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="J1" library="mw-voice-marker" deviceset="VGA_DB15" device=""/>
<part name="U$18" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$20" library="mw-voice-marker" deviceset="GND" device=""/>
<part name="U$19" library="mw-voice-marker" deviceset="EDGE_LAUNCH_JACK" device="" value="SMA"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="43.18" y="55.88" rot="R90"/>
<instance part="U$2" gate="G$1" x="60.96" y="55.88" rot="R90"/>
<instance part="U$3" gate="G$1" x="81.28" y="55.88" rot="R90"/>
<instance part="C1" gate="G$1" x="50.8" y="45.72" rot="R180"/>
<instance part="C2" gate="G$1" x="71.12" y="45.72" rot="R180"/>
<instance part="C3" gate="G$1" x="91.44" y="45.72" rot="R180"/>
<instance part="C4" gate="G$1" x="30.48" y="45.72" rot="R180"/>
<instance part="U$4" gate="G$1" x="111.76" y="45.72" rot="R180"/>
<instance part="U$5" gate="G$1" x="121.92" y="55.88" rot="R270"/>
<instance part="U$6" gate="G$1" x="132.08" y="45.72"/>
<instance part="U$7" gate="G$1" x="12.7" y="45.72"/>
<instance part="U$8" gate="G$1" x="0" y="55.88" rot="R90"/>
<instance part="U$9" gate="G$1" x="-10.16" y="45.72" rot="R180"/>
<instance part="U$10" gate="G$1" x="-10.16" y="38.1"/>
<instance part="U$11" gate="G$1" x="12.7" y="38.1"/>
<instance part="U$12" gate="G$1" x="30.48" y="38.1"/>
<instance part="U$13" gate="G$1" x="50.8" y="38.1"/>
<instance part="U$14" gate="G$1" x="71.12" y="38.1"/>
<instance part="U$15" gate="G$1" x="91.44" y="38.1"/>
<instance part="U$16" gate="G$1" x="111.76" y="38.1"/>
<instance part="U$17" gate="G$1" x="132.08" y="38.1"/>
<instance part="J1" gate="G$1" x="-53.34" y="48.26" rot="MR0"/>
<instance part="U$18" gate="G$1" x="-27.94" y="7.62"/>
<instance part="U$20" gate="G$1" x="152.4" y="38.1"/>
<instance part="U$19" gate="G$1" x="152.4" y="55.88"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="GND"/>
<pinref part="U$9" gate="G$1" pin="P$3"/>
<wire x1="-10.16" y1="38.1" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="GND"/>
<pinref part="U$7" gate="G$1" pin="P$4"/>
<wire x1="12.7" y1="38.1" x2="12.7" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$12" gate="G$1" pin="GND"/>
<pinref part="C4" gate="G$1" pin="P$2"/>
<wire x1="30.48" y1="38.1" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$13" gate="G$1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="P$2"/>
<wire x1="50.8" y1="38.1" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$14" gate="G$1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="P$2"/>
<wire x1="71.12" y1="38.1" x2="71.12" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$15" gate="G$1" pin="GND"/>
<pinref part="C3" gate="G$1" pin="P$2"/>
<wire x1="91.44" y1="38.1" x2="91.44" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$16" gate="G$1" pin="GND"/>
<pinref part="U$4" gate="G$1" pin="P$3"/>
<wire x1="111.76" y1="38.1" x2="111.76" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$17" gate="G$1" pin="GND"/>
<pinref part="U$6" gate="G$1" pin="P$4"/>
<wire x1="132.08" y1="38.1" x2="132.08" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="RGND"/>
<wire x1="-35.56" y1="78.74" x2="-27.94" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$18" gate="G$1" pin="GND"/>
<wire x1="-27.94" y1="78.74" x2="-27.94" y2="68.58" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="GGND"/>
<wire x1="-27.94" y1="68.58" x2="-27.94" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="58.42" x2="-27.94" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="17.78" x2="-27.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="12.7" x2="-27.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="68.58" x2="-27.94" y2="68.58" width="0.1524" layer="91"/>
<junction x="-27.94" y="68.58"/>
<pinref part="J1" gate="G$1" pin="BGND"/>
<wire x1="-35.56" y1="58.42" x2="-27.94" y2="58.42" width="0.1524" layer="91"/>
<junction x="-27.94" y="58.42"/>
<pinref part="J1" gate="G$1" pin="GND"/>
<wire x1="-35.56" y1="17.78" x2="-27.94" y2="17.78" width="0.1524" layer="91"/>
<junction x="-27.94" y="17.78"/>
<pinref part="J1" gate="G$1" pin="SGND"/>
<wire x1="-35.56" y1="12.7" x2="-27.94" y2="12.7" width="0.1524" layer="91"/>
<junction x="-27.94" y="12.7"/>
</segment>
<segment>
<pinref part="U$20" gate="G$1" pin="GND"/>
<wire x1="152.4" y1="38.1" x2="152.4" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="SHIELD"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="1"/>
<wire x1="73.66" y1="55.88" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="P$1"/>
<wire x1="71.12" y1="50.8" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="2"/>
<wire x1="66.04" y1="55.88" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<junction x="71.12" y="55.88"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<pinref part="C1" gate="G$1" pin="P$1"/>
<wire x1="50.8" y1="55.88" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
<wire x1="50.8" y1="50.8" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="53.34" y1="55.88" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
<junction x="50.8" y="55.88"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="2"/>
<pinref part="U$5" gate="G$1" pin="P$4"/>
<wire x1="86.36" y1="55.88" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="P$4"/>
<wire x1="91.44" y1="55.88" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<wire x1="111.76" y1="55.88" x2="116.84" y2="55.88" width="0.1524" layer="91"/>
<wire x1="111.76" y1="50.8" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<junction x="111.76" y="55.88"/>
<pinref part="C3" gate="G$1" pin="P$1"/>
<wire x1="91.44" y1="50.8" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
<junction x="91.44" y="55.88"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="1"/>
<pinref part="U$8" gate="G$1" pin="P$4"/>
<wire x1="35.56" y1="55.88" x2="30.48" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="P$3"/>
<wire x1="30.48" y1="55.88" x2="12.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="12.7" y1="55.88" x2="5.08" y2="55.88" width="0.1524" layer="91"/>
<wire x1="12.7" y1="50.8" x2="12.7" y2="55.88" width="0.1524" layer="91"/>
<junction x="12.7" y="55.88"/>
<pinref part="C4" gate="G$1" pin="P$1"/>
<wire x1="30.48" y1="50.8" x2="30.48" y2="55.88" width="0.1524" layer="91"/>
<junction x="30.48" y="55.88"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$3"/>
<wire x1="127" y1="55.88" x2="132.08" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="P$3"/>
<wire x1="132.08" y1="55.88" x2="132.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="144.78" y1="55.88" x2="132.08" y2="55.88" width="0.1524" layer="91"/>
<junction x="132.08" y="55.88"/>
<pinref part="U$19" gate="G$1" pin="CENTER"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="P$3"/>
<wire x1="-5.08" y1="55.88" x2="-10.16" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="P$4"/>
<wire x1="-10.16" y1="55.88" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="55.88" x2="-20.32" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="55.88" x2="-20.32" y2="83.82" width="0.1524" layer="91"/>
<junction x="-10.16" y="55.88"/>
<pinref part="J1" gate="G$1" pin="RED"/>
<wire x1="-20.32" y1="83.82" x2="-35.56" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
