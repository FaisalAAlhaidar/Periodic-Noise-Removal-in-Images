# Periodic-Noise-Removal-in-Images
Periodic noise in images usually occurs due to electrical interference in image acquisition or while an image is in transport. In this example, I generate the noise represented by the following sine wave:
$$\sin \left( \frac{x}{3} + \frac{y}{5} \right)$$
The result after applying the noise on a sample image (in grayscale for simplicity):
<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/assets/122672831/6bd08078-6355-4e25-8e08-0ea2752d8519" width=50% height=50%>

its corresponding Fourier transform:


<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/assets/122672831/30c97327-c7fc-48f1-bd96-06dfcbc91029" width=50% height=50%>


Note that white "spikes" represent the noise. Removing the noise will be done using:
* Band-reject filtering.
* Notch filtering.

**Band-reject Filtering**

This filter has a circular shape which results in:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/assets/122672831/15d2304b-85ac-4134-b283-c8e6afd00d7e" width=50% height=50%>

And when inverting the Fourier transform:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/assets/122672831/4a286680-cdfd-4bf3-9c9f-1cfea3468b0f" width=50% height=50%>

**Notch Filtering**

This filter has a rectangular shape and results in:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/assets/122672831/cba34568-3677-49bc-a8fb-b4517e3b074d" width=50% height=50%>

When inverted:

<img style= "display: inline; text-align:center" src="https://github.com/FaisalAAlhaidar/Periodic-Noise-Removal-in-Images/assets/122672831/eea12c80-8c2c-4864-b88c-88e06d069fc3" width=50% height=50%>

It is apparent that although the removal isn't perfect, it did provide decent results. Band-reject filtering gave a better result (for removal) for this example, however generating an unwanted ringing artifact.

