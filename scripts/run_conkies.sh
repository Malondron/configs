#!/bin/bash
sleep 10
exec conky -c ~/.conky/.conkyrc_net &
exec conky -c ~/.conky/.conkyrc_system &
exec conky -c ~/.conky/.conkyrc_updates

