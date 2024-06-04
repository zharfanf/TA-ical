conda init zsh
conda activate dds
cd src/resources/scripts/
for dir in *;do
    echo $dir
    # cd $dir; python plot.py
    # cd -
    done
# python plot.py