#!/bin/bash

#dst_dir=/Users/huiwang/projects/external/fake_data/openpilot-comma3
dst_dir=/data/openpilot

mv $dst_dir/.git $dst_dir/.git.orig
rsync -alrv .git $dst_dir

cp -v process_config.py $dst_dir/selfdrive/manager
cp -v thermald.py $dst_dir/selfdrive/thermald
cp -v car_helpers.py $dst_dir/selfdrive/car
cp -v driver_monitor.py $dst_dir/selfdrive/monitoring

cp -v events.py $dst_dir/selfdrive/controls/lib
cp -v long_mpc.py $dst_dir/selfdrive/controls/lib/longitudinal_mpc_lib

cp -v values.py $dst_dir/selfdrive/car/toyota
cp -v carcontroller.py $dst_dir/selfdrive/car/toyota

