# simpleModel
Simple line model with few dependencies for testing purposes

There is a cwl file: Martin's_workflow.cwl.

If you want to run the docker image of Martin's workflow, do these steps:
- docker pull luoyu357/r2d-2fvar-2ffolders-2fc-5f-2fgjpmq4v121x-5f1-5fxfkqjfvdn00000gn-2ft-2frepo2cwl-5f7-5fufe-5f55-2frepo1689272061:20230713-142749
- install cwltool
- download the file of Martin's_workflow.cwl and workflow.yml
- $cwltool Martin's_workflow workflow.yml

How I create the model image:
(mic1) luoyu@MacBook-Pro-452 test4 % mic notebook read https://github.com/luoyu357/simpleModel
(mic1) luoyu@MacBook-Pro-452 test4 % cwltool Martin\'s_workflow.cwl workflow.yml
INFO /Library/Frameworks/Python.framework/Versions/3.8/bin/cwltool 3.1.20230425144158
INFO Resolved 'Martin's_workflow.cwl' to 'file:///Users/luoyu/Desktop/MINIT%20WITH%20ICICE/model/test4/Martin%27s_workflow.cwl'
INFO [job Martin%27s_workflow.cwl] /private/tmp/docker_tmpura0ks3l$ docker \
    run \
    -i \
    --mount=type=bind,source=/private/tmp/docker_tmpura0ks3l,target=/ToTstH \
    --mount=type=bind,source=/private/tmp/docker_tmppcpdy0tu,target=/tmp \
    --workdir=/ToTstH \
    --read-only=true \
    --user=501:20 \
    --rm \
    --cidfile=/private/tmp/docker_tmpsffgwwad/20230713142136-220139.cid \
    --env=TMPDIR=/tmp \
    --env=HOME=/ToTstH \
    r2d-2fvar-2ffolders-2fc-5f-2fgjpmq4v121x-5f1-5fxfkqjfvdn00000gn-2ft-2frepo2cwl-5f7-5fufe-5f55-2frepo1689272061 \
    '/app/cwl/bin/Martin'"'"'s_workflow' \
    -- \
    --batch_size \
    256 \
    --classes \
    10 \
    --epochs \
    1
/srv/conda/envs/notebook/lib/python3.9/subprocess.py:941: RuntimeWarning: line buffering (buffering=1) isn't supported in binary mode, the default buffer size will be used
  self.stdout = io.open(c2pread, 'rb', bufsize)
Downloading data from https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
170500096/170498071 [==============================] - 31s 0us/step
2023-07-13 18:22:33.385033: I tensorflow/compiler/jit/xla_cpu_device.cc:41] Not creating XLA devices, tf_xla_enable_xla_devices not set
2023-07-13 18:22:33.387207: I tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  SSE4.1 SSE4.2 AVX AVX2 AVX512F FMA
To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
2023-07-13 18:22:33.392248: I tensorflow/core/common_runtime/process_util.cc:146] Creating new thread pool with default inter op setting: 2. Tune using inter_op_parallelism_threads for best performance.
Model: "sequential"
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
conv2d (Conv2D)              (None, 30, 30, 32)        896       
_________________________________________________________________
max_pooling2d (MaxPooling2D) (None, 15, 15, 32)        0         
_________________________________________________________________
conv2d_1 (Conv2D)            (None, 13, 13, 64)        18496     
_________________________________________________________________
max_pooling2d_1 (MaxPooling2 (None, 6, 6, 64)          0         
_________________________________________________________________
conv2d_2 (Conv2D)            (None, 4, 4, 64)          36928     
_________________________________________________________________
flatten (Flatten)            (None, 1024)              0         
_________________________________________________________________
dense (Dense)                (None, 64)                65600     
_________________________________________________________________
dense_1 (Dense)              (None, 10)                650       
=================================================================
Total params: 122,570
Trainable params: 122,570
Non-trainable params: 0
_________________________________________________________________
2023-07-13 18:22:45.197469: I tensorflow/compiler/mlir/mlir_graph_optimization_pass.cc:116] None of the MLIR optimization passes are enabled (registered 2)
2023-07-13 18:22:45.203934: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 1996840000 Hz
196/196 - 15s - loss: 1.7621 - accuracy: 0.3563
40/40 - 2s - loss: 1.4974 - accuracy: 0.4554
INFO [job Martin%27s_workflow.cwl] Max memory used: 5672MiB
INFO [job Martin%27s_workflow.cwl] completed success
{
    "output_file": {
        "location": "file:///Users/luoyu/Desktop/MINIT%20WITH%20ICICE/model/test4/saved_model.keras",
        "basename": "saved_model.keras",
        "class": "File",
        "checksum": "sha1$713352f57eca9ac01f04a3dd43fe762c9f638774",
        "size": 1518504,
        "path": "/Users/luoyu/Desktop/MINIT WITH ICICE/model/test4/saved_model.keras"
    }
}INFO Final process status is success
(mic1) luoyu@MacBook-Pro-452 test4 % mic notebook upload-image Martin\'s_workflow.cwl
