# 🎹 CT Scanning and Numerical Modelling of an Early Piano’s Soundboard

![Ganer Square Piano](images/ganer_piano_scan.png)

**Author:** Pranav Duraivel  
**Dissertation:** MSc in Acoustical and Vibration Engineering  
**University:** University of Southampton   
**Date:** September 2024

---

## 📜 Abstract

This project presents a comprehensive study of the vibroacoustic properties of an 18th-century Ganer Square Piano soundboard using **X-ray CT scanning**, **experimental testing**, and **finite element (FE) numerical modelling**. By reconstructing high-fidelity geometry and simulating structural dynamics, this work aims to bridge historical craftsmanship with modern acoustical science.

---

## 🎯 Objectives

1. Use X-ray CT to extract internal geometry of the Ganer piano soundboard.
2. Process scans into CAD-ready 3D meshes.
3. Develop a validated FE model using COMSOL.
4. Conduct experimental vibroacoustic testing.
5. Compare and tune the simulation using experimental mobility results.
6. Optimize material properties to minimize simulation-experiment error.
7. Contribute to historical instrument preservation.

---

## 🧠 Key Concepts

### 📈 Lambert-Beer Law for CT Intensity

\[
I = I_0 e^{-\mu d}
\]

- \( I_0 \): Initial beam intensity  
- \( I \): Transmitted intensity  
- \( \mu \): Material attenuation coefficient  
- \( d \): Material thickness

---

### 🔍 Density Estimation from Hounsfield Units

\[
\rho_i = A \cdot x_i + B
\]

- \( \rho_i \): Density of element \( i \)  
- \( x_i \): Average HU of voxels  
- \( A, B \): Calibration constants (e.g., \( A ≈ 0.0008754 \), \( B ≈ 1 \times 10^{-3} \))

---

## 🛠 Methodology

### 1. CT Scanning Setup

- Equipment: **diondo d5**
- Resolution: **419 μm** and **209 μm**
- Filters: 1mm Al, 0.5mm Cu
- 102,312 total images, 11-hour scan duration

<p align="center">
  <img src="images/ct_scan_setup.png" width="500"/>
  <br/><i>CT scan setup for 1781 Ganer Square Piano</i>
</p>

---

### 2. 3D Reconstruction and CAD

- Software used: FIJI (ImageJ), Dragonfly 3D
- Generated high-quality STL and mesh files for FE analysis

<p align="center">
  <img src="images/soundboard_cad.png"/>
  <br/><i>Smoothed 3D CAD model of the soundboard</i>
</p>

---

### 3. Experimental Vibroacoustic Testing

- Location: Anechoic Chamber, ISVR
- Tests: Point Mobility, Coherence, Sound Radiation
- Equipment: Impact Hammer, PCB Accelerometers, LMS SignalCalc

<p align="center">
  <img src="images/testing_setup.png" width="500"/>
  <br/><i>Experimental setup for mobility testing</i>
</p>

---

### 4. Finite Element Modelling

- Software: COMSOL Multiphysics
- Solid Mechanics, Modal & Frequency Response
- Meshing sensitivity study: λ/8 vs λ/30
- Boundary conditions: Simply supported

<p align="center">
  <img src="images/mesh_convergence.png" width="500"/>
  <br/><i>Mesh convergence study for eigenfrequencies</i>
</p>

---

### 5. Optimisation and Validation

- Compared **experimental** vs **numerical mobility**
- Tuned \( E \), \( \rho \), and thickness using optimisation loops

\[
\xi(\omega) = Y(\omega) F(\omega)
\]

- \( \xi \): Velocity response  
- \( Y(\omega) \): Mechanical admittance  
- \( F(\omega) \): String force input

---

## 📊 Results

- ✅ Successfully reconstructed detailed CAD geometry of 18th-century soundboard  
- 📈 Achieved <10% error in modal frequencies with optimised model  
- 🎧 Clear difference in point mobility between early and modern pianos  
- 🔁 Developed workflow applicable to other historical wooden instruments

---

## 📸 Gallery

| Figure | Description |
|--------|-------------|
| ![](images/mode_shapes.png) | Mode shapes from COMSOL simulation |
| ![](images/mobility_plot.png) | Experimental vs numerical mobility |
| ![](images/radiation_plot.png) | Sound radiation response |
| ![](images/key_recording.png) | Key recordings at bridge |

---

## 💡 Future Work

- Integration of **nonlinear contact models** in action mechanism
- Development of full **digital twin** of historical pianos
- Application of BEM for better sound radiation predictions

---

## 📬 Contact

📧 [pranav.duraivel@email.com](mailto:pranav.duraivel@email.com)  
🔗 [LinkedIn](https://www.linkedin.com/in/pranav-duraivel)  
🔬 GitHub repository maintained for academic reference and future development.

---


