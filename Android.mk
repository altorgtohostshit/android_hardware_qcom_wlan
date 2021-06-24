# Copyright AshutoshOS 2022

ifeq ($(call my-dir),$(call project-path-for,qcom-wlan))

# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(BOARD_IS_AUTOMOTIVE),true)
include $(call all-subdir-makefiles)
endif

endif

ifneq ($(PUBG_WIFI),true)
include $(call all-LAG-FIX)
endif
