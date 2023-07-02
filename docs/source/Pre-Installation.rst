Pre-Installation Preparation
============================

In this step, we prepare the system for the installation of OpenNFT.

#. Install MATLAB R2017b or later.
  
    * Imaging Processing Toolbox
    * Statistics and Machine Learning Toolbox
    * SPM12
    * Psychtoolbox 3
    * JSONlab

#. Create Conda environment for installing OpenNFT.

    * Python 3.6.0 to 3.8.6

#. Install Git.

We assume that you have install the software listed in step 1.

Create and Activate Conda Environment
-------------------------------------

.. note:: If you have not installed Conda, please refer to `Conda Installation <https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html>`_.

To create a Conda environment for installing OpenNFT, run the following command in the terminal:

.. code-block:: bash

    # Create a Conda environment named opennft and install Python 3.8.0
    conda create -n opennft python=3.8.0 
    # Activate the environment we just created
    conda activate opennft

Install Git
-----------

To install Git in the Conda environment you just created, run the following command in the terminal:

.. code-block:: bash

    # Install Git
    conda install git

Now we are ready to move on to the next step.
