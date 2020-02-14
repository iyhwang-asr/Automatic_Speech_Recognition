DIR="data/"


if [ -d "$DIR" ]
then
    # Download dataset if $DIR exists. #
    echo "Download dataset to ${DIR}..."
else
    mkdir data
fi

if [ $1 = "LibriSpeech" ]
then
    echo "LibriSpeech"
    wget http://www.openslr.org/resources/12/train-clean-100.tar.gz
    wget http://www.openslr.org/resources/12/dev-clean.tar.gz
    wget http://www.openslr.org/resources/12/test-clean.tar.gz

    mkdir data/LibriSpeech
    tar -xvf train-clean-100.tar.gz
    mv LibriSpeech data/LibriSpeech/LibriSpeech_train

    tar -xvf dev-clean.tar.gz
    mv LibriSpeech data/LibriSpeech/LibriSpeech_dev

    tar -xvf test-clean.tar.gz
    mv LibriSpeech data/LibriSpeech/LibriSpeech_test

