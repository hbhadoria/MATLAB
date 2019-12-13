clc, clear, close all

frequencies = 1000:5000:15000;

duration = 0.3;
amplitude = 0.6:0.2:1;
fs = 44100;
T = 1 / fs;
t = 0:T:duration;

signals = zeros(length(frequencies), length(t));

for i = 1:length(frequencies)
    for j = 1:length(amplitude)
        signal = amplitude(j) * cos(2 * pi * frequencies(i) * t);

        sound(signal, fs)

        signals(i, :) = signal;
        
        subplot(length(frequencies), 1, i)
        plot(t(1:1000), signal(1:1000))
        hold on
        ylim([-1 1])

        pause(duration + 0.05)
    end
end