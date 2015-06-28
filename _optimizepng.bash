###################
# Optimize the PNGs
for imgdir in "images" "images/carousel" "images/carousel/height-400px" "images/committee" "images/logos" "images/sponsors"
do
  pushd $imgdir > /dev/null
  echo Minimizing images
  for img in `ls *.png`
  do
    echo $img
    # Maximum optimization
    optipng -o5 $img
  done
  popd > /dev/null
done
