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
file_spikes = 'spikes_AH.csv'
file_pressure = 'pressure.csv'
spikes = pd.read_csv(os.path.join(DATA_PATH, file_spikes), sep=' ')
pressure = pd.read_csv(os.path.join(DATA_PATH, file_pressure), sep=' ')
spikes_t,spikes_i = FromCSVtoAER(spikes)
isi = np.diff(spikes_t)
plt.plot(isi)
plt.figure()
plt.plot(pressure[pressure.columns[5]],pressure[pressure.columns[7]])
plt.figure()
plt.plot(spikes_t,spikes_i,'.')
print('ciao')