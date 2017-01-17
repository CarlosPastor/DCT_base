
set TopModule "sc_FIFO_DCT"
set ClockPeriod "10.000000"
set ClockList {clock}
set multiClockList {}
set PortClockMap {reset clock sync clock data_ok clock done clock error clock din clock dout clock}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7a35ti:cpg236:-1l"
set SourceFiles {sc ../../sc_FIFO_DCT.cpp c {}}
set SourceFlags {sc {{}} c {}}
set DirectiveFile {C:/Users/alienBot/Documents/GitHub/DCT_base/DCT_base/DCT/DCT.directive}
set TBFiles {verilog {../../testbench_Top.cpp ../../tb_init.h ../../tb_init.cpp ../../qdbmp.h ../../qdbmp.cpp ../../main.cpp ../../lena512.bmp ../../Tasks.h ../../Tasks.cpp} bc {../../testbench_Top.cpp ../../tb_init.h ../../tb_init.cpp ../../qdbmp.h ../../qdbmp.cpp ../../main.cpp ../../lena512.bmp ../../Tasks.h ../../Tasks.cpp} vhdl {../../testbench_Top.cpp ../../tb_init.h ../../tb_init.cpp ../../qdbmp.h ../../qdbmp.cpp ../../main.cpp ../../lena512.bmp ../../Tasks.h ../../Tasks.cpp} sc {../../testbench_Top.cpp ../../tb_init.h ../../tb_init.cpp ../../qdbmp.h ../../qdbmp.cpp ../../main.cpp ../../lena512.bmp ../../Tasks.h ../../Tasks.cpp} cas {../../testbench_Top.cpp ../../tb_init.h ../../tb_init.cpp ../../qdbmp.h ../../qdbmp.cpp ../../main.cpp ../../lena512.bmp ../../Tasks.h ../../Tasks.cpp} c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/artix7/artix7 xilinx/artix7/artix7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "DCT.aps"
set AvePath "../.."
set HPFPO "0"
