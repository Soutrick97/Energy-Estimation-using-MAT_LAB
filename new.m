[x1, fs]=audioread('C9.wav');
x1=x1(1:9600);
q1=1;
i=1;
while i<=length(x1)-320
    p1=1;
    for j=i:i+319
        s1(p1)=x1(j);
        p1=p1+1;
    end
    e9(q1)=feature_energy(s1);
    q1=q1+1;
    i=i+160;
end