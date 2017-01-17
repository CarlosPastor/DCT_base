<project xmlns="com.autoesl.autopilot.project" name="DCT_base" top="sc_FIFO_DCT" projectType="SystemC">
    <files>
        <file name="blocker_512.cpp" sc="1" tb="false" cflags=""/>
        <file name="blocker_512.h" sc="1" tb="false" cflags=""/>
        <file name="imager_512.cpp" sc="1" tb="false" cflags=""/>
        <file name="imager_512.h" sc="1" tb="false" cflags=""/>
        <file name="sc_FIFO_DCT.cpp" sc="1" tb="false" cflags=""/>
        <file name="sc_FIFO_DCT.h" sc="1" tb="false" cflags=""/>
        <file name="sc_FIFO_IDCT.cpp" sc="1" tb="false" cflags=""/>
        <file name="sc_FIFO_IDCT.h" sc="1" tb="false" cflags=""/>
        <file name="../../Tasks.cpp" sc="1" tb="1" cflags=" "/>
        <file name="../../Tasks.h" sc="1" tb="1" cflags=" "/>
        <file name="../../lena512.bmp" sc="1" tb="1" cflags=" "/>
        <file name="../../main.cpp" sc="1" tb="1" cflags=""/>
        <file name="../../qdbmp.cpp" sc="1" tb="1" cflags=" "/>
        <file name="../../qdbmp.h" sc="1" tb="1" cflags=" "/>
        <file name="../../tb_init.cpp" sc="1" tb="1" cflags=" "/>
        <file name="../../tb_init.h" sc="1" tb="1" cflags=" "/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="-g">
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="DCT" status="active"/>
    </solutions>
</project>

