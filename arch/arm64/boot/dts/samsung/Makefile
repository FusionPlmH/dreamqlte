
dtb-$(CONFIG_SEC_DREAMQLTE_PROJECT) += msm8998-sec-dreamq-r12.dtb

dtb-$(CONFIG_SEC_DREAM2QLTE_PROJECT) += msm8998-sec-dream2q-r12.dtb

ifeq ($(filter y,$(CONFIG_MACH_DREAMQLTE_CHNZC) $(CONFIG_MACH_DREAMQLTE_CHNZM) $(CONFIG_MACH_DREAMQLTE_CHN_LDU)),y)
dtb-y = msm8998-sec-dreamq-chn-r12.dtb
endif

ifeq ($(filter y,$(CONFIG_MACH_DREAM2QLTE_CHNZC) $(CONFIG_MACH_DREAM2QLTE_CHN_LDU)),y)
dtb-y = msm8998-sec-dream2q-chn-r12.dtb
endif

ifeq ($(filter y,$(CONFIG_MACH_DREAMQLTE_CHNHK)),y)
dtb-y = msm8998-sec-dreamq-chnhk-r12.dtb 
endif

ifeq ($(filter y,$(CONFIG_MACH_DREAM2QLTE_CHNHK)),y)
dtb-y = msm8998-sec-dream2q-chnhk-r12.dtb 
endif

ifeq ($(filter y,$(CONFIG_MACH_DREAMQLTE_DCM) $(CONFIG_MACH_DREAMQLTE_KDI)),y)
	dtb-y = msm8998-sec-dreamq-jpn-r12.dtb	
endif

ifeq ($(filter y,$(CONFIG_MACH_DREAM2QLTE_DCM) $(CONFIG_MACH_DREAM2QLTE_KDI)),y)
dtb-y = msm8998-sec-dream2q-jpn-r12.dtb
endif

dtb-$(CONFIG_SEC_GREATQLTE_PROJECT) += msm8998-sec-greatq-r08.dtb

ifeq ($(filter y,$(CONFIG_MACH_GREATQLTE_CHNZC) $(CONFIG_MACH_GREATQLTE_CHN_LDU) $(CONFIG_MACH_GREATQLTE_CHNZM)),y)
dtb-y = msm8998-sec-greatq-chn-r08.dtb
endif

ifeq ($(filter y,$(CONFIG_MACH_GREATQLTE_CHNHK)),y)
dtb-y = msm8998-sec-greatq-chnhk-r08.dtb
endif

ifeq ($(filter y,$(CONFIG_MACH_GREATQLTE_DCM) $(CONFIG_MACH_GREATQLTE_KDI)),y)
dtb-y = msm8998-sec-greatq-jpn-r12.dtb
endif

dtb-$(CONFIG_SEC_CRUISERLTE_PROJECT) += msm8998-sec-cruiser-r00.dtb 

dtb-$(CONFIG_SEC_KELLYLTE_PROJECT) += msm8998-sec-kelly-r04.dtb

dtb-$(CONFIG_SEC_GTS4LLTE_PROJECT) += msm8998-sec-gts4llte-r06.dtb

ifeq ($(filter y,$(CONFIG_MACH_GTS4LLTE_USA)),y)
	dtb-y = msm8998-sec-gts4llte-usa-r06.dtb
endif

ifeq ($(filter y,$(CONFIG_MACH_GTS4LLTE_CHN)),y)
dtb-y = msm8998-sec-gts4llte-chn-r06.dtb
endif

ifeq ($(filter y,$(CONFIG_MACH_GTS4LLTE_CHNHK)),y)
dtb-y = msm8998-sec-gts4llte-chnhk-r06.dtb
endif

dtb-$(CONFIG_SEC_GTS4LWIFI_PROJECT) += msm8998-sec-gts4lwifi-r06.dtb

ifeq ($(filter y,$(CONFIG_MACH_GTS4LWIFI_ZC)),y)
	dtb-y = msm8998-sec-gts4lwifi-chn-r06.dtb

endif

ifeq ($(CONFIG_ARM64),y)
always          := $(dtb-y)
subdir-y        := $(dts-dirs)
else
targets += dtbs
targets += $(addprefix ../, $(dtb-y))

$(obj)/../%.dtb: $(src)/%.dts FORCE
	$(call if_changed_dep,dtc)

dtbs: $(addprefix $(obj)/../,$(dtb-y))
endif
clean-files := *.dtb *.reverse.dts

