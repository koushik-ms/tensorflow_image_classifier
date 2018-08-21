# docker run -v $1:/tf_files -v $2:/img/guess.jpg  xblaster/tensor-guess sh -c "./guess.sh" 2> /dev/null

docker run --rm \
  -v $1:/tf_files \
  -v $2:/img/guess.jpg \
  xblaster/tensor-guess \
  sh -c "cp label_image.py /tf_files && cd /tf_files && python label_image.py /img/guess.jpg"
