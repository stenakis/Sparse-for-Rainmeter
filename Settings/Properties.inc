[Variables]
Value=15

[XButtonProperties]
ImageName=#@#Assets\Settings\Exit.png
X=665
Y=15
W=20
H=20
SolidColor=0,0,0,1
LeftMouseUpAction=[!DeactivateConfig]
ImageTint=#OMode#
MouseOverAction=[!ShowMeter ObjectXButton][!Update][!Redraw]
MouseLeaveAction=[!HideMeter ObjectXButton][!Update][!Redraw]

[BigTextProperties]
FontFace=#Font#
FontSize=80
FontColor=#Color#
StringAlign=Left
AntiAlias=1
X=280
Y=-15
InlineSetting=CharacterSpacing | 1 | 1
InlineSetting2=GradientColor | -90 | #Color#,255 ; 0.0 | #Color#,200 ; 0.8 | #Color#,50 ; 1.0
DynamicVariables=1

[IconsStyle]
W=20
X=35
ImageTint=#OMode#

[OptionsStyle]
FontFace=#MainFont#
FontSize=14
FontColor=#OMode#
StringAlign=Left
AntiAlias=1
X=40r
Y=-2r
MouseLeaveAction=[!HideMeter ObjectMenuRectangle][!Update][!Redraw]

[SubtitleStyle]
FontColor=#Color#
FontSize=16
FontFace=#MainFont#
AntiAlias=1
InlineSetting=CharacterSpacing | 0.2 | 0.2
X=280
StringAlign=Left
DynamicVariables=1

[DescriptionStyle]
FontSize=13
FontFace=#MainFont#
AntiAlias=1
StringAlign=Center
StringCase=Upper
InlineSetting=CharacterSpacing | 0.2 | 0.2
FontColor=#OMode#