nnUNet_plan_and_preprocess -t $1 --verify_dataset_integrity
tar -xvf /content/drive/MyDrive/$2.tar -C $nnUNet_raw_data_base/nnUNet_raw_data/
echo "---------------------------------"
ls $nnUNet_raw_data_base/nnUNet_raw_data/$2/labelsTr/._*
ls $nnUNet_raw_data_base/nnUNet_raw_data/$2/imagesTr/._*
ls $nnUNet_raw_data_base/nnUNet_raw_data/$2/imagesTs/._*
rm -r $nnUNet_raw_data_base/nnUNet_raw_data/$2/labelsTr/._*
rm -r $nnUNet_raw_data_base/nnUNet_raw_data/$2/imagesTr/._*
rm -r $nnUNet_raw_data_base/nnUNet_raw_data/$2/imagesTs/._*
ls $nnUNet_raw_data_base/nnUNet_raw_data/$2/labelsTr/._*
ls $nnUNet_raw_data_base/nnUNet_raw_data/$2/imagesTr/._*
ls $nnUNet_raw_data_base/nnUNet_raw_data/$2/imagesTs/._*
ls $nnUNet_raw_data_base/nnUNet_raw_data/
rm -r $nnUNet_raw_data_base/nnUNet_raw_data/$3
mv $nnUNet_raw_data_base/nnUNet_raw_data/$2 $nnUNet_raw_data_base/nnUNet_raw_data/$3
cd $nnUNet_raw_data_base/nnUNet_raw_data/$3/imagesTr
for f in *.nii.gz; do mv "$f" "${f%.nii.gz}"_0000.nii.gz; done;
cd $nnUNet_raw_data_base/nnUNet_raw_data/$3/imagesTs
for f in *.nii.gz; do mv "$f" "${f%.nii.gz}"_0000.nii.gz; done;
nnUNet_plan_and_preprocess -t $1 --verify_dataset_integrity
