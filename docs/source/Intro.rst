Intro
=====

.. note:: 
    
    This document is a personal notebook of my experience with `OpenNFT <https://www.opennft.org>`_. 
    It is not the `official tutorial <https://opennft.readthedocs.io/en/latest/index.html>`_ or intended to be a tutorial, but rather a collection of notes that I took while learning how to work with OpenNFT.

Summary of the paper
--------------------

This section of the notebook provides a summary of the paper titled `"OpenNFT: An open-source Python/Matlab framework for real-time fMRI neurofeedback training based on activity, connectivity and multivariate pattern analysis" <http://dx.doi.org/10.1016/j.neuroimage.2017.06.039>`_.

Introduction
^^^^^^^^^^^^

The motivation of the paper is to leverage **neurofeedback** to help participants learn **voluntary control** over their own brain activity and connectivity via **operant conditioning**.
The superiority of such approach lies in the fact that it is **drug free**, **non-invasive**, and **effective** in treating a variety of diseases.

The authors compares **neurofeedback based on rt-fMRI** to **conventional neurofeedback study**.

* Conventional neurofeedback study
  
    * Performance of the participant not evaluated in real-time
    * Challenging to evaluate behavioral/therapeutic effect
    * Range from single-day session to long session over several days

* Neurofeedback based on rt-fMRI

    * Demands high-performance computer 
    * Lacks open-source GUI-based framework

And OpenNFT falls under the category of **neurofeedback based on rt-fMRI**.

Methods
^^^^^^^

#. Neurofeedback data acquisition and transfer

    A **data analysis workstation** (where OpenNFT is installed) is added to the same network as the MR scanner and reconstruction console.
    
    * MR hardware and software export acquired and reconstructed data to a shared folder.
    * Data analysis workstation access the exported data via **TCP/IP**.

#. Timing and synchronization

#. Data preprocessing

    If precautions are not taken against movement, **spatial alignment** and **reslicing** (via SPM12) are recommended.

#. Data processing

    * **Incremental GLM (iGLM)** is used to estimate **whole-brian activation maps** which is displayed in real-time.
    * **Cumulative GLM** is used to correct for **linear drift** and **head motions**.
    * **Low-pass Kalman filter** extracts **desired signal** and discards **high-frequency noise**.
    * **First-order autoregressive model (AR(1))** applied on **all voxels' time-series** **prior to estimation of the GLM** is used account for serial correlations in fMRI data due to **non-neurophysiological fluctuations** and **non-modeled neuronal activity**. 
    * **Dynamic ROI estimation**.

#. Feedback estimation

    #. Constantly displayed (continuous) and periodically displayed (intermittent) **activation-based** feedbacks

        Single/multiple ROI activity levels are estimated in terms of **percent signal change (PSC)** after preprocessing. 
        Feedback estimation in this fashion usually involves:

        * Extracting voxel activity using ROI/pattern masks,
        * Obtaining average, weighted average, or eigenvector estimate from the spatial-temporal data sample within the ROI, and
        * Adaptively scaling (normalizing) the time-series (to prevent confusion for the participants).

    #. Intermittent effective **connectivity** feedback 

        Connectivity can estimated as:
        
            * Temporal correlation (using **Pearson correlation coefficient** estimation) between two time-series, and
            * Functional connectivity networks using **real-time Smooth Incremental Graphical Lasso (rt-SINGLE)**.

        Dynamic causal modeling (DCM) can also be used to estimate effective connectivity.

    #. Continuous **classification-based** feedback

        * A **supporting vector machine (SVM) classifier** is trained prior to neurofeedback run to discriminate between two attention states.
        * Accuracy of classification is determined using **n-fold cross validation**.
        * The trained classifier is used to provide neurofeedback.

#. Feedback presentation.

    Feedback is presented visually as simple visual cues, e.g.
    
        * Thermometer,
        * Moving bar,
        * Avatar faces, and
        * VR-scenes,
    
    via 
    
        * MR-compatible 2D screens/goggles,
        * MR-compatible 3D displays, and
        * Virtual-reality goggles.
