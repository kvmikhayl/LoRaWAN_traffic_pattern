# LoRaWAN_traffic_pattern
# LoRaWAN_OTAA_config_X.m - configuration file for scenario X
# OTAA_v19_copy5_X.m - simulation run-file for scenario X; the results are automatically logged in separate files; configurations are automatically loaded
# km_process_OTAA_rand_results_v10.m - run-file to process the logged results and plot charts
# km_LoRaWAN_OTAA_process_next_packet_v3.m - helper-file; returns the results of a packet tranmission (sucess/fail)

# Scenarios (sorry for inconvenient naming; to be fixed):
# *base - baseline; no random delays
# *rand_OTAA - random delay during OTAA (i.e., between JR packets)
# *randx1 - random delay after OTAA (i.e., between JA and the first data packet)
# *rand_data - random delay between data frames
# *randOTAA - random delays at all three phases
