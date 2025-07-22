%COMPARISONS BETWEEN COMSOL MODEL AND MEASUREMENTS

%% C4
data_C4_exp = readmatrix('H1_1,2_sv001.txt');
lbf2N = 1;
AC4 = (-data_C4_exp(:,2)/lbf2N).*exp(1j*data_C4_exp(:,3)*pi/180);
YC4 = AC4./(1j*2*pi*data_C4_exp(:,1));
f = data_C4_exp(:,1);

data_C4_COMSOL = readmatrix('YC4_COMSOL.txt');

figure
subplot 211
loglog(f,abs(YC4),real(data_C4_COMSOL(:,1)),abs(data_C4_COMSOL(:,2)))
xlabel('Frequency, Hz')
ylabel('Magnitude, m/s/N')
legend('Measured','COMSOL')
xlim([40 4000])
ylim([1e-4 1e-1])


%% C6
data_C6_exp = readmatrix('H1_1,2_sv001 7X 8X.txt');
lbf2N = 4.44822;
AC6 = (-data_C6_exp(:,2)/lbf2N).*exp(1j*data_C6_exp(:,3)*pi/180);
YC6 = AC6./(1j*2*pi*data_C6_exp(:,1));
f = data_C6_exp(:,1);

data_C6_COMSOL = readmatrix('YC6_COMSOL.txt');
subplot 212
loglog(f,abs(YC6),real(data_C6_COMSOL(:,1)),abs(data_C6_COMSOL(:,2)))
xlabel('Frequency, Hz')
ylabel('Magnitude, m/s/N')
% legend('Measured','COMSOL')
xlim([40 4000])
ylim([1e-4 1e-1])

