wget -P $HOME/dossier

#!/bin/bash

predictor=68
if [ $# -eq 1 ]; then
    predictor=$1
fi

wget -P ./scripts/data "http://dlib.net/files/shape_predictor_$(echo $predictor)_face_landmarks.dat.bz2"
wget -P ./scripts/data "http://dlib.net/files/dlib_face_recognition_resnet_model_v1.dat.bz2"

bzip2 -d ./scripts/data/*.bz2

