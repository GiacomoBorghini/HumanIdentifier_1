% wavelets = {'HAAR', 'DB2', 'SYM3', 'COIF1', 'BIOR1.3', 'RBIO1.3', 'DMEY'};
wavelets = [1, 2, 3, 4, 5, 6, 7];
% wavelets = cellstr(wavelets);
% wavelets = categorical(wavelets);

%HAAR
% y_H = [0.59, 0.26, 0.82, 0.60, 0.64, 0.90, 0.43, 0.52, 0.62, 0.85, 0.42];
% y_AI = [0.26, 1.11, 0.64, 0.72, 0.72, 0.64, 0.71, 0.49, 0.77, 0.29, 0.49];

%DB2
% y_H = [0.57, 0.66, 0.30, 0.51, 0.32, 0.61, 0.60, 0.57, 0.82, 0, 0.61];
% y_AI = [0.47, 0.35, 0.87, 0.45, 0.67, 0.65, 0.46, 0.62, 0.60, 0.70, 0.68];

%SYM3
% y_H = [0.57, 0.80, 0.51, 0.76, 0.71, 0.53, 0.40, 0.50, 0.49, 0.52, 0.69];
% y_AI = [0.87, 0.86, 0.72, 0.60, 0.45, 0.59, 0.68, 0.75, 0.83, 0.58, 0.93];

%COIF1
% y_H = [0.42, 0.41, 0.47, 0.44, 0.42, 0.64, 0.43, 0.48, 0.48, 0.26, 0.46];
% y_AI = [0.57, 0.54, 0.70, 0.63, 0.53, 0.44, 0.68, 0.63, 0.60, 0.55, 0.40];

%BIOR1.3
% y_H = [0.48, 0.57, 0.67, 0.94, 0.69, 0.58, 0.64, 0.35, 0.92, 0.26, 0.89];
% y_AI = [0.73, 0.45, 0.66, 0.65, 0.83, 0.48, 0.63, 0.81, 0.48, 0.46, 0.41];

%RBIO1.3
% y_H = [0.70, 0.79, 0.64, 0.64, 0.70, 0.44, 0.72, 0.57, 0.57, 0.44, 0.79];
% y_AI = [0.40, 0.57, 0.78, 0.66, 0.26, 0.55, 0.67, 0.81, 0.52, 0.25, 0.36];

%DMEY
% y_H = [0.39, 0.77, 0.54, 0.26, 0.13, 0.56, 0.36, 0.73, 0.27, 0.36, 0.33];
% y_AI = [0.76, 0.90, 0.91, 0.59, 0.83, 0.69, 0.94, 0.56, 0.65, 0.79, 0.67];

%CROPPED 1024x1024

%HAAR
% y_H = [0.27, 0.59, 0.30, 0.77, 0.71, 0.51, 0.80, 0.52, 0.62, 0.85, 0.42];
% y_AI = [0.26, 1.11, 0.64, 0.72, 0.72, 0.64, 0.71, 0.49, 0.77, 0.29, 0.49];

%DB2
% y_H = [0.42, 0.50, 0.48, 0.34, 0.63, 0.63, 0.77, 0.57, 0.82, 0, 0.61];
% y_AI = [0.47, 0.35, 0.87, 0.45, 0.67, 0.65, 0.46, 0.62, 0.60, 0.70, 0.68];

%SYM3
% y_H = [0.68, 0.91, 0.37, 0.57, 0.73, 0.64, 0.43, 0.50, 0.49, 0.52, 0.69];
% y_AI = [0.87, 0.86, 0.72, 0.60, 0.45, 0.59, 0.68, 0.75, 0.83, 0.58, 0.93];

%COIF1
% y_H = [0.73, 0.83, 0.70, 0.42, 0.49, 0.70, 0.48, 0.48, 0.48, 0.26, 0.46];
% y_AI = [0.57, 0.54, 0.70, 0.63, 0.53, 0.44, 0.68, 0.63, 0.60, 0.55, 0.40];

%BIOR1.3
% y_H = [0.31, 0.69, 0.85, 0.74, 0.48, 0.36, 0.70, 0.35, 0.92, 0.26, 0.89];
% y_AI = [0.73, 0.45, 0.66, 0.65, 0.83, 0.48, 0.63, 0.81, 0.48, 0.46, 0.41];

%RBIO1.3
% y_H = [0.24, 0.40, 0.64, 0.55, 0.83, 0.37, 0.79, 0.57, 0.57, 0.44, 0.79];
% y_AI = [0.40, 0.57, 0.78, 0.66, 0.26, 0.55, 0.67, 0.81, 0.52, 0.25, 0.36];

%DMEY
y_H = [0.48, 0.53, 0.27, 0.16, 0.40, 0.45, 0.59, 0.73, 0.27, 0.36, 0.33];
y_AI = [0.76, 0.90, 0.91, 0.59, 0.83, 0.69, 0.94, 0.56, 0.65, 0.79, 0.67];

%BY ARTIST (OUTDATED)

% 1
% y_H = [0.59, 0.57, 0.57, 0.42, 0.48, 0.70, 0.39];
% y_AI = [0.67, 0.47, 0.87, 0.57, 0.73, 0.40, 0.76];

%2
% y_H = [0.26, 0.66, 0.80, 0.41, 0.57, 0.79, 0.77];
% y_AI = [1.11, 0.35, 0.86, 0.54, 0.45, 0.57, 0.90];

%3
% y_H = [0.82, 0.30, 0.51, 0.47, 0.67, 0.64, 0.54];
% y_AI = [0.64, 0.87, 0.72, 0.70, 0.66, 0.78, 0.91];

%4
% y_H = [0.60, 0.51, 0.76, 0.44, 0.94, 0.64, 0.26];
% y_AI = [0.72, 0.45, 0.60, 0.63, 0.65, 0.66, 0.59];

%5
% y_H = [0.64, 0.32, 0.71, 0.42, 0.69, 0.70, 0.13];
% y_AI = [0.72, 0.67, 0.45, 0.53, 0.83, 0.26, 0.83];

%6
% y_H = [0.90, 0.61, 0.53, 0.64, 0.58, 0.44, 0.56];
% y_AI = [0.64, 0.65, 0.59, 0.44, 0.48, 0.55, 0.69];

%7
% y_H = [0.43, 0.60, 0.40, 0.43, 0.64, 0.72, 0.36];
% y_AI = [0.71, 0.46, 0.68, 0.68, 0.63, 0.67, 0.94];

%8
% y_H = [0.52, 0.57, 0.50, 0.48, 0.35, 0.57, 0.73];
% y_AI = [0.49, 0.62, 0.75, 0.63, 0.81, 0.81, 0.56];

%9
% y_H = [0.62, 0.82, 0.49, 0.48, 0.92, 0.57, 0.27];
% y_AI = [0.77, 0.60, 0.83, 0.60, 0.48, 0.52, 0.65];

%10
% y_H = [0.85, 0, 0.38, 0.52, 0.26, 0.44, 0.36];
% y_AI = [0.29, 0.71, 0.56, 0.55, 0.46, 0.25, 0.79];

%11
% y_H = [0.42, 0.61, 0.69, 0.46, 0.89, 0.75, 0.33];
% y_AI = [0.49, 0.68, 0.93, 0.40, 0.41, 0.36, 0.67];

figure

x=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

plot(x,y_H,'r:.',...
    'LineWidth',1,...
    'MarkerSize',20)
hold on
plot(x,y_AI,'b:.',...
    'LineWidth',1,...
    'MarkerSize',20)
title("AI vs. Human DMEY")
xlabel('Painting Label')
ylabel('Entropy') 
% ax = gca;
% ax.XTickLabel = {'HAAR', 'DB2', 'SYM3', 'COIF1', 'BIOR1.3', 'RBIO1.3', 'DMEY'};

legend('Human','AI')
hold off