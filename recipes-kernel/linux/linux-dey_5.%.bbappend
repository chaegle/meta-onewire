# insert necessary copyright here

#
# enable kernel support for Dallas Semi (Maxim) 1-Wire devices
#
onewire_kernel_preconfigure() {
       	mkdir -p ${B}

	kernel_conf_variable W1 m
	kernel_conf_variable W1-CON y

	# enable 1-Wire bus master(s)
	#kernel_conf_variable W1_MASTER_DS2490  m
	kernel_conf_variable W1_MASTER_DS2482  m
	#kernel_conf_variable W1_MASTER_MXC     m
	#kernel_conf_variable W1_MASTER_DS1WM   m
	#kernel_conf_variable W1_MASTER_GPIO    m
	#kernel_conf_variable W1_MASTER_SGI     m

	# enable 1-Wire slaves
	#kernel_conf_variable W1_SLAVE_THERM    m
	#kernel_conf_variable W1_SLAVE_SMEM     m
	#kernel_conf_variable W1_SLAVE_DS2405   m
	#kernel_conf_variable W1_SLAVE_DS2408   m
	#kernel_conf_variable W1_SLAVE_DS2413   m
	#kernel_conf_variable W1_SLAVE_DS2406   m
	#kernel_conf_variable W1_SLAVE_DS2423   m
	#kernel_conf_variable W1_SLAVE_DS2805   m
	kernel_conf_variable W1_SLAVE_DS2431   m
	#kernel_conf_variable W1_SLAVE_DS2433   m
	#kernel_conf_variable W1_SLAVE_DS2438   m
	#kernel_conf_variable W1_SLAVE_DS250X   m 
	#kernel_conf_variable W1_SLAVE_DS2780   m
	#kernel_conf_variable W1_SLAVE_DS2781   m
	#kernel_conf_variable W1_SLAVE_DS28E04  m
	kernel_conf_variable W1_SLAVE_DS28E17  m

	#BATTERY_DS2760                         m
	#BATTERY_MAX1721X                       m
}

do_configure_prepend() {
	onewire_kernel_preconfigure
}
