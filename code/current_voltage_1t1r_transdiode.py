import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import os
def FromCSVtoAER(csv_file,thr = 1, idx = 0):
    import scipy.signal
    peaks = scipy.signal.find_peaks(csv_file[csv_file.columns[7]])
    spikes_t = csv_file.iloc[peaks[0], 5]
    spikes_v = csv_file.iloc[peaks[0], 7]
    test = np.where(spikes_v > thr)
    spikes_t_clean = np.array(spikes_t.iloc[test])
    spikes_i_clean = np.array(spikes_v.iloc[test])*0+idx
    return spikes_t_clean,spikes_i_clean



Current_PATH = os.getcwd()
FILE_PATH = os.path.dirname(os.getcwd())
DATA_PATH = os.path.join(FILE_PATH, 'data')
file_current = '1t1r_current_transdiode_vdd1v2.csv'
file_voltage = '1t1r_voltage_transdiode_vdd1v2.csv'
file_measured = 'GTac_data.xlsx'
input_analog = pd.read_excel(os.path.join(DATA_PATH, file_measured),header = 1)
current = pd.read_csv(os.path.join(DATA_PATH, file_current), sep=' ')
voltage = pd.read_csv(os.path.join(DATA_PATH, file_voltage), sep=' ')
fig1,axis1 = plt.subplots(nrows = 1, ncols = 1)
axis1.semilogy(input_analog[input_analog.columns[0]],input_analog[input_analog.columns[1]],color = 'r',linewidth=5, label = 'Pressure')
axis1.set_ylabel('Resistance(Ohm)')

axis2 = axis1.twinx()
axis2.semilogy(current[current.columns[1]],current[current.columns[3]],color = 'b',linewidth=5, label = 'Current')
axis2.set_ylabel('Current(A)')
axis1.set_xlabel('Pressure(kPa)')
axis1.set_title('1T1R Transdiode')
axis3 = axis1.twinx()
axis3.plot(voltage[voltage.columns[1]],voltage[voltage.columns[3]],color = 'g',linewidth=5, label = 'Voltage')
axis3.set_ylabel('Voltage(V)')
axis3.spines['right'].set_position(('outward', 60))
axis1.set_xlabel('Pressure(kPa)')
axis1.set_title('1T1R Transdiode')
fig1.legend()
plt.show()
print('ciao')