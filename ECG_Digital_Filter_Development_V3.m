% ECG IIR digital filter and NLM filter
% Efficient speed, area, and power
% Author: Mehran Shoaei
% Date: 2024.06.21
% DSP Course Dr Eslami SRBIAU University

% Load ECG signal
ecg_dataset = load('ECGData.mat');
ecg_signals = ecg_dataset.ECGData.Data;
ecg_signal = ecg_signals(162, :);
ecg_signal = ecg_signal / max(abs(ecg_signal)); % Normalize data

% Define the coefficients of the IIR digital filter
b = [0.0675, 0.1349, 0.0675];
a = [1, -1.143, 0.4128];

% Perform the IIR filter on the ECG signal
filtered_signal_iir = filter(b, a, ecg_signal);

% Optimize parameters for the NLM filter
optimized_params = pso_optimization(@nlm_filter, filtered_signal_iir);

% Use optimized parameters to filter the ECG signal with NLM filter
filtered_signal_nlm = nlm_filter(filtered_signal_iir, optimized_params);

% Calculate SNR and RMSE for NLM filtered signal
snr_value_final = snr(filtered_signal_nlm, ecg_signal - filtered_signal_nlm);
rmse_value_final = sqrt(mean((ecg_signal - filtered_signal_nlm).^2));

% Calculate SNR and RMSE for IIR filtered signal
snr_value_pri = snr(filtered_signal_iir, ecg_signal - filtered_signal_iir);
rmse_value_pri = sqrt(mean((ecg_signal - filtered_signal_iir).^2));

% Display results
fprintf('SNR: %f dB\n', snr_value_final);
fprintf('RMSE: %f\n', rmse_value_final);

% Display the original, IIR filtered, and NLM filtered signals
subplot(3, 2, 1);
plot(ecg_signal);
title('ECG Original Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3, 2, 3);
plot(filtered_signal_iir);
title('ECG IIR Filtered Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3, 2, 5);
plot(filtered_signal_nlm);
title('ECG NLM Filtered Signal');
xlabel('Time');
ylabel('Amplitude');

% Display SNR and RMSE values
bar_titles = categorical({'SNR Value Primary','SNR Value New','RSME Value Primary','RMSE Value New'});
bar_values = [snr_value_pri snr_value_final rmse_value_pri rmse_value_final];
subplot(3, 2, [2,4,6]);
bar(bar_titles, bar_values, 0.5);
title('Parameters Value - SNR[primary-final],RMSE[primary-final]');
ylabel('(dB)');

% %Display the result of signal
% subplot(2, 3, 5);
% plot(approx_sum_total);
% title('ERCPAA');
% xlabel('Block');
% ylabel('Number');
% 
% subplot(2, 3, 6);
% plot(product_total);
% title('BWM');
% xlabel('Block');
% ylabel('Number');


% subplot(2, 3, 5);
% bar(rmse_value);
% title('RMSE Value');
% ylabel('RMSE');

% Implementations of ERCPAA and BWM functions
function sum = ercpaa(a, b)
    a_bin = dec2bin(a, 8);
    b_bin = dec2bin(b, 8);
    carry = 0;
    sum = zeros(1, 8);
    for i = 8:-1:1
        ai = str2double(a_bin(i));
        bi = str2double(b_bin(i));
        sum(i) = xor(xor(ai, bi), carry);
        carry = or(and(ai, bi), and(carry, xor(ai, bi)));
    end
    sum = bin2dec(num2str(sum));
end

function product = bwmultiplier(a, b)
    a_bin = dec2bin(a, 8);
    b_bin = dec2bin(b, 8);
    n = length(a_bin);
    p = zeros(n, n);
    for i = 1:n
        for j = 1:n
            p(i, j) = str2double(a_bin(n-i+1)) * str2double(b_bin(n-j+1));
        end
    end
    product = 0;
    for k = 0:2*n-2
        sum = 0;
        for i = 0:k
            j = k - i;
            if i < n && j < n
                sum = sum + p(i+1, j+1);
            end
        end
        product = product + sum * 2^k;
    end
end

% Implementation of NLM filter function
function denoised_signal = nlm_filter(signal, params)
    search_window = round(params(1));
    similarity_window = round(params(2));
    h = params(3);
    N = length(signal);
    denoised_signal = zeros(size(signal));
    for i = 1:N
        w_start = max(1, i - search_window);
        w_end = min(N, i + search_window);
        s_start = max(1, i - similarity_window);
        s_end = min(N, i + similarity_window);
        patch = signal(s_start:s_end);
        weights = exp(-(patch - signal(i)).^2 / (h^2));
        weights = weights / sum(weights);
        denoised_signal(i) = sum(weights .* signal(s_start:s_end));
    end
end

% Implementation of PSO optimization function
function optimized_params = pso_optimization(nlm_func, signal)
    num_particles = 30;
    max_iterations = 100;
    param_bounds = [1, 10; 1, 10; 0.1, 1];
    options = optimoptions('particleswarm', 'SwarmSize', num_particles, 'MaxIterations', max_iterations);
    optimized_params = particleswarm(@(params) pso_objective(nlm_func, signal, params), 3, param_bounds(:,1), param_bounds(:,2), options);
end

function error = pso_objective(nlm_func, signal, params)
    denoised_signal = nlm_func(signal, params);
    error = sqrt(mean((signal - denoised_signal).^2));
end

function dfa_result = dfa(signal)
    N = length(signal);
    n = floor(N/2);
    F = zeros(n,1);
    for i = 1:n
        X = cumsum(signal - mean(signal));
        Y = polyfit(1:N, X, 1);
        Y = polyval(Y, 1:N);
        F(i) = sqrt(mean((X - Y).^2));
    end
    dfa_result = F;
end
