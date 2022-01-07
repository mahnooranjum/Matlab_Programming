clear
cellsA = 400; cellsB = 50; cellsC = 100;
channA = 15;  channB = 100;channC = 60;
A = [0.1:0.5:200];

PbA = []; PbB = []; PbC = [];
for i = A
    temp = B(i,channA);
    PbA = [PbA temp];
    temp = B(i,channB);
    PbB = [PbB temp];
    temp = B(i,channC);
    PbC = [PbC temp];
end

figure(); hold on; grid on; box on;
xlim([0, 200])
set(gca, 'YScale', 'log')
set(gca, 'XScale', 'log')
plot(A, PbA,'b', 'linew', 2); 
plot(A, PbB,'r', 'linew', 2); 
plot(A, PbC,'g', 'linew', 2);
xlabel("Traffic Intensity A (Erlangs)"); 
ylabel("Blocking Probability");
title("Blocking Probability for Systems A, B and C");
legend("System A", "System B", "System C");


