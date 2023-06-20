# Periodic-Noise-Removal-in-Images
Periodic noise in images usually occurs due to electrical interference in image acquisition or while an image is in transport. In this example, I generate the noise represented by the following sine wave:
$$\sin \left( \frac{x}{3} + \frac{y}{5} \right)$$
The result after applying the noise on a sample image (in grayscale for simplicity):
<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/blob/main/OutputImages/ImageWithNoise.png?raw=true" width=50% height=50%>

its corresponding Fourier transform:


<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/blob/main/OutputImages/ImageWithNoiseFFT.png?raw=true" width=50% height=50%>


Note that white "spikes" represent the noise. Removing the noise will be done using:
* Band-reject filtering.
* Notch filtering.

**Band-reject Filtering**

This filter has a circular shape which results in:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/blob/main/OutputImages/BandRejectFilteredFFT.png?raw=true" width=50% height=50%>

And when inverting the Fourier transform:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/blob/main/OutputImages/InvertedBandRejectFilteredFFT.png?raw=true" width=50% height=50%>

**Notch Filtering**

This filter has a rectangular shape and results in:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/blob/main/OutputImages/NotchFilteredFFT.png?raw=true" width=50% height=50%>

When inverted:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/blob/main/OutputImages/InvertedNotchFilteredFFT.png?raw=true" width=50% height=50%>

It is apparent that although the removal isn't perfect, it did provide decent results. Band-reject filtering gave a better result (for removal) for this example, however generating an unwanted ringing artifact.

