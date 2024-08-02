# Capritios-Filter-Design

This github repository contains the project code, articles and dataset access link
if you haven't access to drived files, send mail to author
mehran.shoaee@gmail.com
mehran.shoaei@srbiau.ac.ir

The MATLAB code is available in ECG_Digita_Filter_Development_V3.m matlab code file
this code is a sumulation of porposed filter design in MATLAB development environment
the ECG Dataset that is used in project is available with acces link in google drive
references artile


These below persian courses is good for beginner persons who that intrested to understand this
article, simulation and Digital Signal Processing.

All hints for beginner students

Dr Mashhadi DSP course
https://maktabkhooneh.org/course/%D9%BE%D8%B1%D8%AF%D8%A7%D8%B2%D8%B4-%D8%B3%DB%8C%DA%AF%D9%86%D8%A7%D9%84%D9%87%D8%A7%DB%8C-%D8%AF%DB%8C%D8%AC%DB%8C%D8%AA%D8%A7%D9%84-mk128/

Dr Babaei Signal and System course
https://maktabkhooneh.org/course/%D8%B3%DB%8C%DA%AF%D9%86%D8%A7%D9%84-%D9%88-%D8%B3%D9%8A%D8%B3%D8%AA%D9%85-mk75/


Access link to all project files

https://www.dropbox.com/scl/fo/mt1g6h3jwbwx92puptq15/ALdZ_4gDh8tkNat1FVmIRVI?rlkey=ln5rqhioth811w7kdaotnv03z&st=5ryrde2s&dl=0

Capricious Digital Filter Design and Implementation Using
Baugh–Wooley Multiplier and Error Reduced Carry
Prediction Approximate Adder for ECG Noise Removal Application

Abstract
Capricious digital filter (CDF) plays a significant role of signal processing application field to eradicate noise.
Any prototype filter desired frequency response is attained by developing all pass makeover-based capricious 
digital filter (APM-CDF) that sustains full control on cutoff frequency. The benefits of APM-CDF are limited 
through its speed,area,andpowerconsume.Inthismanuscript,Baugh–Wooleymultiplier(BWM) with error reduced carry 
prediction approximate adder (ERCPAA) is proposed to The implementation of audio and video processing on 
FPGA-based systems using the Zedboard platform provides significant advantages in terms of performance and 
flexibility. The approach leverages the hardware capabilities of FPGAs to handle parallel processing tasks 
efficiently. The design and implementation process involves using high-level synthesis (HLS) tools like Vivado 
HLS to convert C/C++ code into RTL, which simplifies the development process and reduces the time required for 
optimization. This methodology allows designers to explore various design alternatives and optimize the system for 
specific performance metrics, such as latency and resource utilization. For instance, in a comparative analysis of 
traditional RTL and HLS-based implementations, the HLS approach demonstrated a reduction in implementation time
from two weeks to one week while also optimizing resource usage, as evidenced by the decrease in Block RAM and DSP48 
utilization.


Filters are applied to eradicate unwanted noise from the needed input signal’s frequency range [33]. Recently, the 
investigators try to design the CDFs for providing feasible realization of digital filters [18, 19, 27, 28]. The CDFs 
are used to manage several parameters for giving variable frequency response [7, 32]. The FIR is deemed as the admired
CDF filter; this is applied in many domains [4, 13]. But, FIR filter contains more hardware complex, also it occupies
more operating power [24]. The 2D digital filter reduces the complexity with the help of quadrant symmetric concept 
[10]. It diminishes more filter coefficients [30]. The ideal frequency response is accomplished through fractional 
order digital discriminate (FOD) [14, 16].
Capricious digital filter is based upon filters operating frequency (OF) [25]. The complexity of Capricious digital 
filter is decreased with the help of all pass makeover (APM) [15]. APM restores every prototype filters delay unit 
as well as it maintains operatingfrequency[11,17].Byfixedcoefficientprototypefilter,thevariablelowpass, high pass, 
band pass, and band stop responses are acquired [1]. APM-CDF is applied to different audio functioning. The aim of 
APM-CDF is “to high speed APM-CDF implementation along superior operational frequency” [23]. The fundamental 
arithmetic procedures have addition with multiplication. Generally, ternary logic 

needs low components, it realizes higher data transmission during interlink wires [33]. Hence, it occupies lower
area than binary for distributed functions. It processes the data effectually with higher speed. These are motivated 
to design arithmetic and logic circuits for APM-CDF.
Digital filters are practical DSP structures for signal processing, estimation, and analysis. With the advent of 
VLSI-based technology, a number of processes needed for creating digital filters has gradually decreased, which has
encouraged the creation of on-chip VLSI-oriented structure for DSP applications. The fundamental function of digital 
filters is multiplication, which necessitates additional hardware under space, speed,delaycomponents,andpowerconsumption
,resultinginineffectivefilterdesign. So,itisessentialtodecreasetheseparametersandtodecreasethearithmeticperformed
under multiplier.
Thisworkdesignscapriciousdigitalfilterdependingonallpassmakeover.Baugh— Wooley multiplier and ERCPAA is considered 
to accelerate filter model with minimal power consume, area. Here, ERCPAA is a faster binary adder that occupies lower 
power including area. Also, BWM is utilized to lessen the hardware complex with high speed, lesser area, and lesser 
power consume. APM-CDF-ERCPAA-BWM filter is applicable in ECG signal noise removing application for presenting filtered
superior quality signals resulting Baugh–Wooley multiplier acts the same operation by decreasing the number of partial
products derived at each stage, thereby simplifying the architecture with respect to delay, complexity, and power
consumption parameters. The key contributions of this work are summarized below:
In a recent study, Sinnoor and Janardhan (2022) explored FPGA-based denoising techniques to enhance signal quality in
electrocardiograms (ECGs) by using a hybrid model combining Multiscale Local Polynomial Transform (MLPT) and Ensemble 
Empirical Mode Decomposition (EEMD). This approach aimed to effectively remove noise such as white Gaussian noise from 
ECG signals, leading to improved signal-to-noise ratios (SNR). The hybrid MLPT-EEMD model demonstrated superior 
performance, achieving an SNR of 25.93 dB, significantly higher than the traditional Empirical Mode Decomposition (EMD)
and other existing methods. This study underscores the potential of hybrid denoising techniques in delivering high-fidelity
ECG signals for accurate cardiac analysis and diagnosis [35].
In recent advancements, FPGA-based denoising techniques have been evaluated to enhance the signal quality of 
electrocardiograms (ECGs). The study utilized Vivado High-Level Synthesis (HLS) to implement an efficient ECG denoising 
method on an FPGA platform. The denoising techniques were assessed based on their ability to reduce noise and improve
signal clarity, using performance metrics such as Mean Squared Error (MSE), Signal-to-Noise Ratio (SNR), and Peak 
Signal-to-Noise Ratio (PSNR). The implementation demonstrated significant 

improvements in reducing noise, thereby enhancing the quality of ECG signals, which is critical for accurate diagnosis
and monitoring in medical applications [36]
The implementation of audio and video processing on FPGA-based systems using the Zedboard platform provides significant 
advantages in terms of performance and flexibility. The approach leverages the hardware capabilities of FPGAs to handle
parallel processing tasks efficiently. The design and implementation process involves using high-level synthesis (HLS) 
tools like Vivado HLS to convert C/C++ code into RTL, which simplifies the development process and reduces the time 
required for optimization. This methodology allows designers to explore various design alternatives and optimize the 
system for specific performance metrics, such as latency and resource utilization. For instance, in a 
comparative analysis of traditional RTL and HLS-based implementations, the HLS approach demonstrated a reduction in 
implementation time from two weeks to one week while also optimizing resource usage, as evidenced by the decrease in
Block RAM and DSP48 utilization.
Large FPDs, which are often called Field Programmable Gate Arrays (FPGAs), consist of a set of logic blocks and a 
flexible routing structure to connect them together. Using automated CAD tools, designers may program the logic blocks
and their corresponding interconnect to implement any desired application within a reasonable amount of time. Such 
flexibility and fast time to market, however, comes with the expense of additional transistors and metal resources that 
are only partially utilized. Therefore, we need to identify utilized logic and routing resources that contribute to a
signal for analyzing the dynamic power consumption. Our analysis and results in this paper can be used in 2 ways: 1) 
Better understanding of where power is consumed in FPGAs will help design of future power-efficient FPGAs. 2) Detailed
understanding of power consumption distribution will help expert designers to reduce or control the power characteristics
of their design.


Conclusion
In this manuscript, the VLSI designing of APM-CDF utilizing ERCPAA and Baugh–Wooley multiplier (BWM) depending on 
arithmetic perspective is proposed. The 
proposed APM-CDF-ERCPAA-BWM attains greater functioning frequencies even high filter order owing to its pipelined 
design. By introducing variable block sizes, ERCPAA establishes a fair trade-off among delay and area usage. The 
simulation outcomes display that the proposed adder utilizes lesser count of modules and lessens the latency over 
existing adders. The proposing multiplier design maximized the processing speed with the help of Baugh–Wooley multiplier
(BWM). Such adder with multiplier designing assists their ERCPAA-BWM to raise its speed and operating frequency including
lessening of power with components. It is appropriate in ECG signal noise removing process to offer filtered higher-quality
signals. The experimental performance of proposed APM-CDF- ERCPAA-BWM filter reaches lesser power 23.87%, 21.65%, and 
32.76%, and higher speed 24.76%, 23.77%, 32.86% estimatedtotheexistingAPM-CDFusingDF-4VM-CSA,DF-VMD-CLA,andDF-Radix 2-LCSLA 
filters, respectively. The APM-CDF-ERCPAA-BWM filter reaches lesser MSE 21.76%, 24.87% evaluated to the existing APM-CDF 
using DF-4VM-CSA, DFVMD-CLA filters, respectively. This research is further extended to develop a new architecture for a
high-speed low power APM-CDF filter with developing efficient reconfigurable designs resulting in low latency and hardware 
resources.
