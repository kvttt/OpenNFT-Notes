Installation
============

Install from GitHub
-------------------

You might encounter `issues <https://github.com/OpenNFT/OpenNFT/issues/161>`_ if you decide to use the official version of OpenNFT.
I have already submitted a PR to the original author. 
But as for now, we will use my forked version of the package. 
In addition to the above mentioned issue, OpenNFT would produce error if Numpy version is 1.20.0 or above due to deprecation of ``np.float``.
I have fixed this issue in my forked version by forcing the installation of ``numpy==1.19.5``.

For easy debug, we will first clone the repository to our local machine and install the package from the local repository.

To clone the repository, run the following command in the terminal:

.. code-block:: bash

    # cd to the directory where you want to clone the repository
    cd /path/to/your/directory
    # Clone the repository
    git clone --recurse-submodules https://github.com/kvttt/OpenNFT.git

Run the following command in the terminal to install the package:

.. code-block:: bash

    # Install OpenNFT from my forked version
    pip3 install -e /path/to/your/directory/OpenNFT

Check Installation
------------------

To check if the installation was successful, run the following command in the terminal:

.. code-block:: bash

    pip3 list

You should see the following output (or something similar):

.. code-block:: bash

    Package      Version
    ------------ --------
    matlabengine 9.12     
    OpenNFT      1.0.0rc0

Run OpenNFT
-----------

To run OpenNFT, run the following command in the terminal:

.. code-block:: bash

    opennft

In my case, running the above command opens up the OpenNFT GUI but does not display outputs in the terminal. 
To help better debug, you could alternatively run the following command in the terminal:

.. code-block:: bash

    # cd to the directory where the OpenNFT package is installed in your conda environment
    # In my case, the directory is:
    cd C:\Users\tangk\anaconda3\envs\opennft\Scripts
    # Run OpenNFT
    opennft_console.exe
    
You should see the OpenNFT GUI and outputs similar to the following in the terminal:

.. code-block:: bash
    
    2023-07-14 01:22:26 | WARNING   | runmatlab:connect_to_matlab - Cannot connect to Matlab "MATLAB_NFB_MAIN"
    2023-07-14 01:22:26 | WARNING   | opennft:initialize - There is no main Matlab session yet. Press "Initialize" button.

Issues 
------

If you have to install MATLAB Engine API for Python manually, please refer to 
`Install MATLAB Engine API for Python <https://www.mathworks.com/help/matlab/matlab_external/install-the-matlab-engine-for-python.html>`_.

In my case, I have MATLAB R2022a installed. 
The corresponding MATLAB Engine API for Python version is 9.12.
Following the instruction in the link above does not work.
To manually install the MATLAB Engine API for Python, run the following command in the terminal:

.. code-block:: bash

    # Install MATLAB Engine API for Python
    pip3 install matlabengine==9.12
