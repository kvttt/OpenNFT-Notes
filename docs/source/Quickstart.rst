Quickstart
==========

You should now have the OpenNFT GUI opened up in front of you. 
In addition, message in the terminal should instruct you to initialize.
This means that Matlab engines needs to be started and the OpenNFT GUI needs to be connected to the Matlab engine.
Go ahead and press the "Initialize" button in the GUI and you should see the following message in the terminal:

.. code-block:: bash

    2023-07-14 13:22:58.286 | INFO     | opennft.mlproc:_start_matlab:152 - Starting Matlab engine "MATLAB_NFB_MAIN_67344" helper process 21548...
    2023-07-14 13:23:07.940 | INFO     | opennft.mlproc:_start_matlab:169 - Matlab engine "MATLAB_NFB_MAIN_67344" is started
    2023-07-14 01:23:07 | INFO      | mlproc:_connect - Connected to Matlab engine "MATLAB_NFB_MAIN_67344"
    2023-07-14 13:23:09.698 | INFO     | opennft.mlproc:_start_matlab:152 - Starting Matlab engine "MATLAB_NFB_PTB_67344" helper process 17480...
    2023-07-14 13:23:16.629 | INFO     | opennft.mlproc:_start_matlab:169 - Matlab engine "MATLAB_NFB_PTB_67344" is started
    2023-07-14 01:23:16 | INFO      | mlproc:_connect - Connected to Matlab engine "MATLAB_NFB_PTB_67344"
    2023-07-14 01:23:16 | INFO      | opennft:initialize - Using Matlab session "MATLAB_NFB_MAIN_67344" as MAIN
    2023-07-14 01:23:16 | INFO      | opennft:initialize - Using Matlab session "MATLAB_NFB_PTB_67344" for PTB
    2023-07-14 01:23:18 | INFO      | opennft:initialize - Initialization finished (22.03 s)

Issues
------

If you see the following error:

.. code-block:: bash

    2023-07-14 01:22:01 | ERROR     | runmatlab:connect_to_matlab - Cannot connect to Matlab "MATLAB_NFB_MAIN"

This could be due to the presence of zombie Matlab processes that are not properly closed.
If this is the case, you can find the corresponding temporary files by first locating the ``tempdir`` of your Matlab installation.
In my case, opening Matlab and running the following command gives me the following output:

.. code-block:: matlab

    >> tempdir

    ans =

        'C:\Users\tangk\AppData\Local\Temp\'

Then, you can navigate to the folder above and remove ``MATLAB_NFB_MAIN_SHARED`` and ``MATLAB_NFB_MAIN``.
Afterwards, you can try to initialize again.
