[x1, fs]=audioread('C1.wav');
[x2, fs]=audioread('C2.wav');
[x3, fs]=audioread('C3.wav');
[x4, fs]=audioread('C4.wav');
[x5, fs]=audioread('C5.wav');
[x6, fs]=audioread('C6.wav');
[x7, fs]=audioread('C7.wav');
[x8, fs]=audioread('C8.wav');
[x9, fs]=audioread('C9.wav');
x1=x1(1:9600);
x2=x2(1:9600);
x3=x3(1:9600);
x4=x4(1:9600);
x5=x5(1:9600);
x6=x6(1:9600);
x7=x7(1:9600);
x8=x8(1:9600);
x9=x9(1:9600);
q1=1;
q2=1;
q3=1;
q4=1;
q5=1;
q6=1;
q7=1;
q8=1;
q9=1;
i1=1;
i2=1;
i3=1;
i4=1;
i5=1;
i6=1;
i7=1;
i8=1;
i9=1;
while i1<=length(x1)-320
    p1=1;
    for j=i1:i1+319
        s1(p1)=x1(j);
        p1=p1+1;
    end
    e1(q1)=feature_energy(s1);
    q1=q1+1;
    i1=i1+160;
end
for i2=1:length(x2)-320
    p2=1;
    for j=i2:i2+319
        s2(p2)=x2(j);
        p2=p2+1;
    end
    e2(q2)=feature_energy(s1);
    q2=q2+1;
    i2=i2+160;
end
for i3=1:length(x3)-320
    p3=1;
    for j=i3:i3+319
        s3(p3)=x3(j);
        p3=p3+1;
    end
    e3(q3)=feature_energy(s3);
    q3=q3+1;
    i3=i3+160;
end
for i4=1:length(x4)-320
    p4=1;
    for j=i4:i4+319
        s4(p4)=x4(j);
        p4=p4+1;
    end
    e4(q4)=feature_energy(s4);
    q4=q4+1;
    i4=i4+160;
end
for i5=1:length(x5)-320
    p5=1;
    for j=i5:i5+319
        s5(p5)=x5(j);
        p5=p5+1;
    end
    e5(q5)=feature_energy(s5);
    q5=q5+1;
    i5=i5+160;
end
for i6=1:length(x6)-320
    p6=1;
    for j=i6:i6+319
        s6(p6)=x6(j);
        p6=p6+1;
    end
    e6(q6)=feature_energy(s6);
    q6=q6+1;
    i6=i6+160;
end
for i7=1:length(x7)-320
    p7=1;
    for j=i7:i7+319
        s7(p7)=x7(j);
        p7=p7+1;
    end
    e7(q7)=feature_energy(s7);
    q7=q7+1;
    i7=i7+160;
end
for i8=1:length(x8)-320
    p8=1;
    for j=i8:i8+319
        s8(p8)=x8(j);
        p8=p8+1;
    end
    e8(q8)=feature_energy(s8);
    q8=q8+1;
    i8=i8+160;
end
for i9=1:length(x9)-320
    p9=1;
    for j=i9:i9+319
        s9(p9)=x9(j);
        p9=p9+1;
    end
    e9(q9)=feature_energy(s9);
    q9=q9+1;
    i9=i9+160;
end
        plot(e1); axis tight
        hold on;
        plot(e2); axis tight
        plot(e3); axis tight
        plot(e4); axis tight
        plot(e5); axis tight
        plot(e6); axis tight
        plot(e7); axis tight
        plot(e8); axis tight
        plot(e9); axis tight
        title({'\fontsize{16}Energy Estimation of Speech Signals using FAST Fourier Transform';'\fontsize{12}by, Soutrick'});
        ylabel('Energy');
        xlabel('Signal');
        hold off;