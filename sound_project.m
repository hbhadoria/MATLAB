clc, clear, close all

frequencies = 0:100:20000;
duration = 0.2;
amplitude = 1;
fs = 44100;
T = 1 / fs;
t = 0:T:duration;

signals = zeros(length(frequencies), length(t));


for i = 1:length(frequencies)
    signal = amplitude * cos(2 * pi * frequencies(i) * t);
    sound(signal, fs)
    signals(i, :) = signal;
    pause(duration)
end
