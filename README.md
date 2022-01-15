# 1. Reverberation - NSP project

## 1.1. Specification

### 1.1.1. General Specification

1. Write a program that is reading a signal from the microphone or line-in input, optionally adds a reverberation (repeated echo) effect, and outputs the signal on the line-out output.

2. Boundary conditions for reverberation:
    a. The reverb effect occurs due to a IIR-filter with the difference equation.: $$y[k]=x[k] + αy[k-N]$$. The parameter α is the gain, while N is the delay.
    b. The delay should be adjustable between $T_{\text{min}}=0\text{s}$ and $T_{\text{max}}=1\text{s}$, the gain between $A_{\text{min}}=-60\text{dB}$ und $A_{\text{max}}=0\text{dB}$.

3. Algorithm:
![20220115162228](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115162228.png)

## Principle and Matlab Simulation

For the reverberation system, the system function is $$H=\frac{Y}{X}=\frac{1}{1-\alpha Z^{-N}}.$$

In MATLAB, represent the coefficient of the numerator by creating an array with only one element, and represent that of the denominator by creating an array with two elements. *(Here, choose the gain $\alpha$ to be $0.7$ and the delay factor $N$ to be $1$)*

![20220115170054](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115170054.png)

The MATLAB command **filt** can be used to generate a discrete-time transfer function.

![20220115171539](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115171539.png)

The MATLAB command **zplane** provides the z-plane plot for discrete-time systems.

![20220115172128](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115172128.png)

The MATLAB command **freqz** returns the system responses of both magnitude and phase.

![20220115172654](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115172654.png)

The MATLAB command **impz** gives out the impulse response of the transfer function.

![20220115172807](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115172807.png)

The system responses with different delay factors and gains are shown below with a table

**Z-plane**

| Gain\Delay    | $N=1$ | $N=2$ | $N=3$ | $N=4$ |
|---------------|-------|-------|-------|-------|
| $\alpha=0.7$  |![20220115174802](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115174802.png)|![20220115180041](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115180041.png)|       |       |
| $\alpha=-0.7$ |       |       |       |       |
| $\alpha=1$    |![20220115175205](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115175205.png)|       |       |       |
| $\alpha=-1$   |       |       |       |       |
| $\alpha=1.2$  |![20220115175344](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115175344.png)|       |       |       |
| $\alpha=-1.2$ |![20220115175514](https://raw.githubusercontent.com/holdenzlL/myIHS/main/images/20220115175514.png)|       |       |       |

**Impulse response**

| Gain\Delay    | $N=1$ | $N=2$ | $N=3$ | $N=4$ |
|---------------|-------|-------|-------|-------|
| $\alpha=0.7$  |       |       |       |       |
| $\alpha=-0.7$ |       |       |       |       |
| $\alpha=1$    |       |       |       |       |
| $\alpha=-1$   |       |       |       |       |
| $\alpha=1.2$  |       |       |       |       |
| $\alpha=-1.2$ |       |       |       |       |
