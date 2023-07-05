Installation
============

Install from GitHub
-------------------

You might encounter `issues <https://github.com/OpenNFT/OpenNFT/issues/161>`_ while trying to install the package. 
I have already submitted a PR to the original author. 
But as for now, we will use my forked version of the package. 
Run the following command in the terminal to install the package:

.. code-block:: bash

    # Install OpenNFT from my forked version
    # --use-pep517 option is used to suppress an error which prevents the installation.
    pip3 install --use-pep517 git+https://github.com/kvttt/OpenNFT.git

Check Installation
------------------

To check if the installation was successful, run the following command in the terminal:

.. code-block:: bash

    pip3 list

You should see the following output (or something similar):

.. code-block:: bash

    Package               Version
    --------------------- --------
    matlabengineforpython 9.13     
    OpenNFT               1.0.0rc0

Run OpenNFT
-----------

To run OpenNFT, run the following command in the terminal:

.. code-block:: bash

    opennft


Issues 
------

If you have to install MATLAB Engine API for Python manually, please refer to 
`Install MATLAB Engine API for Python <https://www.mathworks.com/help/matlab/matlab_external/install-the-matlab-engine-for-python.html>`_.
