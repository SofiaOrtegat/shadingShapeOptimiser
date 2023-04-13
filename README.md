
SofiaOrtegat's shadingShapeOptimiser

Shape from Shading Optimiser
================

The primary methodologies and schema are outlined in **Note.pdf** within the *Note* folder.

Sample outcomes are provided on the **wiki** page. 

The crux of the algorithm is inspired by Tai-Pang Wu and Chi-Keung Tang's work **Dense Photometric Stereo Using a Mirror Sphere and Graph Cut**, available in the *IEEE Computer Society Conference on Computer Vision and Pattern Recognition* (2005). Graph Cut Fold-Fulkerson maxflow algorithm toolbox sourced from *http://vision.ucla.edu/~brian/gcmex.html*

Shape from shapelet reconstruction is referenced from Peter Kovesi's **Shapelets Correlated with Surface Normals Produce Surfaces** (IEEE International Conference on Computer Vision). The toolbox is available at *http://www.csse.uwa.edu.au/~pk/Research/MatlabFns/*

================

Getting Started: Open **preProcessData.m**, adjust the directory of input data, set correct image size, and copy the light source direction file into code folder.

Compile the mex file. Load *lightvec.txt*

<code>surfaceNormal = initialNormal(VarName1, VarName2, VarName3);</code> This step would generally require 1-2 minutes.

<code>refineNormal = graphCutSurfaceNormal(surfaceNormal);</code> This is a time-consuming step. 

You can generate N-L image result by <code>lightImg = diffuseLight(surfaceNormal);</code> or <code>lightImg = diffuseLight(refineNormal);</code>

Use <code>recsurf = shapeFromShapelets(surfaceNormal);</code> or <code>recsurf = shapeFromShapelets(refineNormal);</code> to review 3D reconstruction outcome.