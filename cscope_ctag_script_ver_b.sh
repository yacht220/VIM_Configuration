#!/bin/sh
TARGET_DIR="./installers/ "
TARGET_DIR+="./plugins/ "
TARGET_DIR+="./src/ "
#TARGET_DIR+="./avpx/ "
#TARGET_DIR+="./external/ "
#TARGET_DIR+="./external/3rdparty/ "
#TARGET_DIR+="./qaclient-irv/ "
TARGET_DIR+="./external/3rdparty/backupboost/ "
TARGET_DIR+="./external/3rdparty/google/ "

#TARGET_DIR="/vob/tetra/su_vris_mcore/ "
#TARGET_DIR+="/vob/tetra/su_applic/ "
#TARGET_DIR+="/vob/tetra/su_ras/ "
#TARGET_DIR+="/vob/tetra/su_ergo/ "
#TARGET_DIR+="/vob/tetra/su_core/ "
#TARGET_DIR+="/vob/tetra/su_sig/ "
#TARGET_DIR+="/vob/tetra/su/ "
#TARGET_DIR+="/vob/tetra/synergy/ "
#TARGET_DIR+="/vob/tetra/ngch/ "
#TARGET_DIR+="/vob/tetra/gcp_lrrp/ "
#TARGET_DIR+="/vob/tetra/gcp_networking/ "
#TARGET_DIR+="/vob/tetra/ngch_demonstrator/ "
#TARGET_DIR+="/vob/tetra/cgiss_subscriber/ "
#TARGET_DIR+="/vob/tetra/ngms/ "
#TARGET_DIR+="/vob/tetra/ngms_linux/ "
#TARGET_DIR+="/vob/tetra/ssp_tools/ "
#TARGET_DIR+="/vob/tetra/ssp_gnss/ "
#TARGET_DIR+="/vob/tetra/ssp_bt_mgr/ "
#TARGET_DIR+="/vob/tetra/ssp_bt_stack/ "
#TARGET_DIR+="/vobs/ssp_linux/ "


CSCOPE_FLAGS=$TARGET_DIR
CSCOPE_FLAGS+="-name \"*.h\" -o -name \"*.c\" -o -name \"*.cpp\" -o -name \"*.cc\" -o -name \"*Makefile*\" -o -name \"*.mk\" -o -name \"*.hpp\" -o -name \"*.inl\" -o -name \"*.xml\" -o -name \"*.pl\" -o -name \"*.pm\" -o -name \"*.inc\" -o -name \"*.py\" -o -name \"*.java\""
echo CSCOPE_FLAGS=$CSCOPE_FLAGS

echo $CSCOPE_FLAGS | xargs find > cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su_vris_mcore/ > cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su_applic/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su_ras/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su_ergo/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su_core/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su_sig/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/su/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/synergy/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ngch/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/gcp_lrrp/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/gcp_networking/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ngch_demonstrator/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/cgiss_subscriber/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ngms/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ssp_tools/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/usb/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/tools/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ssp_gnss/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ssp_bt_mgr/ >> cscope.files
#echo $CSCOPE_FLAGS | xargs find /vob/tetra/ssp_bt_stack/ >> cscope.files

cscope -bkq -i cscope.files


CTAGS_FLAGS="-R --c++-kinds=+p --fields=+iaS --extra=+q "
CTAGS_FLAGS+=$TARGET_DIR
echo CTAGS_FLAGS=$CTAGS_FLAGS

echo $CTAGS_FLAGS | xargs ctags

#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su_vris_mcore
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su_applic
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su_ras
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su_ergo
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su_core
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su_sig
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/su
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/synergy
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ngch
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/gcp_lrrp
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/gcp_networking
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ngch_demonstrator
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/cgiss_subscriber
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ngms
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ssp_tools
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/usb
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/tools
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ssp_gnss
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ssp_bt_mgr
#echo $CTAGS_FLAGS | xargs ctags  /vob/tetra/ssp_bt_stack
