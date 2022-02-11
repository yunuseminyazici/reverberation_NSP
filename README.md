# 1. Reverberation - NSP project

<!-- TOC -->

- [1. Reverberation - NSP project](#1-reverberation---nsp-project)
  - [1.1. Specification](#11-specification)
    - [1.1.1. General Specification](#111-general-specification)
  - [1.2. Principle and Matlab Simulation](#12-principle-and-matlab-simulation)
    - [1.2.1. Basic principles and MATLAB simulation](#121-basic-principles-and-matlab-simulation)
    - [1.2.2. Simulation with Sinmulink](#122-simulation-with-sinmulink)
  - [Design Idea](#design-idea)
    - [The sequence of Signal Flow](#the-sequence-of-signal-flow)

<!-- /TOC -->

## 1.1. Specification

### 1.1.1. General Specification

1. Write a program that reads a signal from the microphone or line-in input, optionally adds a reverberation (repeated echo) effect, and outputs the signal on the line-out output.

2. Boundary conditions for reverberation:
    a. The reverb effect occurs due to a IIR-filter with the difference equation.: $$y[k]=x[k] + αy[k-N]$$. The parameter α is the gain, while N is the delay.
    b. The delay should be adjustable between $T_{\text{min}}=0\text{s}$ and $T_{\text{max}}=1\text{s}$, the gain between $A_{\text{min}}=-60\text{dB}$ und $A_{\text{max}}=0\text{dB}$.

3. Algorithm:
![20220115162228](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115162228.png)

## 1.2. Principle and Matlab Simulation

### 1.2.1. Basic principles and MATLAB simulation

For the reverberation system, the system function is $$H=\frac{Y}{X}=\frac{1}{1-\alpha Z^{-N}}.$$

In MATLAB, represent the coefficient of the numerator by creating an array with only one element, and represent that of the denominator by creating an array with two elements. *(Here, choose the gain $\alpha$ to be $0.7$ and the delay factor $N$ to be $1$)*

![20220115170054](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115170054.png)

The MATLAB command **filt** can be used to generate a discrete-time transfer function.

![20220115171539](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115171539.png)

The MATLAB command **zplane** provides the z-plane plot for discrete-time systems.

![20220121103723](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220121103723.png)

The MATLAB command **freqz** returns the system responses of both magnitude and phase.

![20220121103817](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220121103817.png)

The MATLAB command **impz** gives out the impulse response of the transfer function.

![20220121103853](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220121103853.png)

The system responses with different delay factors and gains are shown below with a table

**Z-plane**

| Gain\Delay    | $N=1$ | $N=2$ | $N=3$ | $N=4$ |
|---------------|-------|-------|-------|-------|
| $\alpha=0.7$  |![zpl_n1a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n1a-0_7.bmp)|![zpl_n2a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n2a%2B0_7.bmp)|![zpl_n3a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n3a%2B0_7.bmp)|![zpl_n4a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n4a%2B0_7.bmp)|
| $\alpha=-0.7$ |![zpl_n1a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n1a%2B0_7.bmp)|![zpl_n2a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n2a-0_7.bmp)|![zpl_n3a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n3a-0_7.bmp)|![zpl_n4a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n4a-0_7.bmp)|
| $\alpha=1$    |![zpl_n1a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n1a%2B1.bmp)|![zpl_n2a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n2a%2B1.bmp)|![zpl_n3a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n3a%2B1.bmp)|![zpl_n4a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n4a%2B1.bmp)|
| $\alpha=-1$   |![zpl_n1a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n1a-1.bmp)|![zpl_n2a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n2a-1.bmp)|![zpl_n3a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n3a-1.bmp)|![zpl_n4a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n4a-1.bmp)|
| $\alpha=1.2$  |![       ](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/%20%20%20%20%20%20%20.bmp)|![zpl_n2a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n2a%2B1.2.bmp)|![zpl_n3a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n3a%2B1.2.bmp)|![zpl_n4a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n4a%2B1.2.bmp)|
| $\alpha=-1.2$ |![zpl_n1a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n1a-1.2.bmp)|![zpl_n2a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n2a-1.2.bmp)|![zpl_n3a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n3a-1.2.bmp)|![zpl_n4a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/zpl_n4a-1.2.bmp)|

**Impulse response**

| Gain\Delay    | $N=1$ | $N=2$ | $N=3$ | $N=4$ |
|---------------|-------|-------|-------|-------|
| $\alpha=0.7$  |![impz_n1a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n1a%2B0_7.bmp)|![impz_n2a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n2a%2B0_7.bmp)|![impz_n3a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n3a%2B0_7.bmp)|![impz_n4a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n4a%2B0_7.bmp)|
| $\alpha=-0.7$ |![impz_n1a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n1a-0_7.bmp)|![impz_n2a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n2a-0_7.bmp)|![impz_n3a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n3a-0_7.bmp)|![impz_n4a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n4a-0_7.bmp)|
| $\alpha=1$    |![impz_n1a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n1a%2B1.bmp)|![impz_n2a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n2a%2B1.bmp)|![impz_n3a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n3a%2B1.bmp)|![impz_n4a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n4a%2B1.bmp)|
| $\alpha=-1$   |![impz_n1a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n1a-1.bmp)|![impz_n2a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n2a-1.bmp)|![impz_n3a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n3a-1.bmp)|![impz_n4a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n4a-1.bmp)|
| $\alpha=1.2$  |![impz_n1a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n1a%2B1.2.bmp)|![impz_n2a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n2a%2B1.2.bmp)|![impz_n3a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n3a%2B1.2.bmp)|![impz_n4a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n4a%2B1.2.bmp)|
| $\alpha=-1.2$ |![impz_n1a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n1a-1.2.bmp)|![impz_n2a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n2a-1.2.bmp)|![impz_n3a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n3a-1.2.bmp)|![impz_n4a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/impz_n4a-1.2.bmp)|

**Frequency response**

| Gain\Delay    | $N=1$ | $N=2$ | $N=3$ | $N=4$ |
|---------------|-------|-------|-------|-------|
| $\alpha=0.7$  |![frq_n1a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n1a%2B0_7.bmp)|![frq_n2a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n2a%2B0_7.bmp)|![frq_n3a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a%2B0_7.bmp)|![frq_n4a+0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n4a%2B0_7.bmp)|
| $\alpha=-0.7$ |![frq_n1a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n1a-0_7.bmp)|![frq_n2a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n2a-0_7.bmp)|![frq_n3a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a-0_7.bmp)|![frq_n4a-0_7](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n4a-0_7.bmp)|
| $\alpha=1$    |![frq_n1a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n1a%2B1.bmp)|![frq_n2a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n2a%2B1.bmp)|![frq_n3a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a%2B1.bmp)|![frq_n4a+1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n4a%2B1.bmp)|
| $\alpha=-1$   |![frq_n1a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n1a-1.bmp)|![frq_n2a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n2a-1.bmp)|![frq_n3a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a-1.bmp)|![frq_n4a-1](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n4a-1.bmp)|
| $\alpha=1.2$  |![frq_n1a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n1a%2B1.2.bmp)|![frq_n2a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n2a%2B1.2.bmp)|![frq_n3a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a%2B1.2.bmp)|![frq_n4a+1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n4a%2B1.2.bmp)|
| $\alpha=-1.2$ |![frq_n1a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n1a-1.2.bmp)|![frq_n2a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n2a-1.2.bmp)|![frq_n3a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a-1.2.bmp)|![frq_n3a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n3a-1.2.bmp)|![frq_n4a-1.2](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/frq_n4a-1.2.bmp)|

### 1.2.2. Simulation with Sinmulink

The Simulink simulation of the reverberation system is shown below

![20220115190212](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115190212.png)

For the component *Discrete Impulse*, the sample time is set to be $1/48000$.

The output waveform of the oscilloscope is shown below

![20220115190834](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115190834.png)

## Design Idea

### The sequence of Signal Flow

From the system diagram in section 1.2.2, the sequence of signal flow is designed to be:

    1. Read in the input signal and store the value into *input_x*
    2. Calculate the value of *output_y*, output_y=input_x+gainedDelayedOutput
    3. Output the value of *output_y*
    4. Do delay operation and get the value of *delayedOutput*
    5. Multiply the value of *delayedOutput* by $\alpha$ to get the value of *gainedDelayedOutput*
