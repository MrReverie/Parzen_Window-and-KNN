%{
注：运行demo.m时，只保留要观察的类别，把4个类别中其他3类都用“%{......%}”的方式注释掉，
    否则会由于figure()中标号冲突而出错。
%}

%use the same test patterns
y1 = mvnrnd([2,5],[1,0;0,2],100);
y2 = mvnrnd([5,2],[0.5,0;0,1],100);
y = [y1; y2];
y_target = [zeros(100,1);ones(100,1)];

%
%1st train_patterns, N = 600(two patterns respectively 300,300)
x11 = mvnrnd([2,5],[1,0;0,2],300);
x12 = mvnrnd([5,2],[0.5,0;0,1],300);
x1 = [x11;x12];
figure(1);
plot(x11(:,1),x11(:,2),'+',x12(:,1),x12(:,2),'.')
%parzen
fun = @parzen;
figure(2);
test_parzen(x1,0.5,fun)
figure(3);
test_parzen(x1,1,fun)
figure(4);
test_parzen(x1,1.5,fun)
%parzen classifier
figure(5);
plot_classify(x11,x12,1,@parzen)
correct_rate_parzen1 = parzen_rate(x11, x12, y, y_target, 1, @parzen)
crp2 = parzen_rate(x11, x12, y, y_target, 0.5, @parzen)
crp3 = parzen_rate(x11, x12, y, y_target, 1.5, @parzen)
%KNN
fun = @KNN;
figure(6);
test_KNN(x1,5,fun)
figure(7);
test_KNN(x1,25,fun)
figure(8);
test_KNN(x1,100,fun)
correct_rate_KNN1 = KNN_rate(x11, x12, 100, y, y_target) 
crk2 = KNN_rate(x11, x12, 5, y, y_target)
crk3 = KNN_rate(x11, x12, 25, y, y_target)
figure(9)
plot_classify(x11,x12,25,@KNN)
%}

%注意需要运行时删除！！！！
%{
%2nd train_patterns, N = 2000(two patterns respectively 1000,1000)
x21 = mvnrnd([2,5],[1,0;0,2],600);
x22 = mvnrnd([5,2],[0.5,0;0,1],600);
x2 = [x21;x22];
figure(1);
plot(x21(:,1),x21(:,2),'+',x22(:,1),x22(:,2),'.')
%parzen
fun = @parzen;
figure(2);
test_parzen(x2,0.5,fun)
figure(3);
test_parzen(x2,1,fun)
figure(4);
test_parzen(x2,1.5,fun)
%parzen classifier
figure(5);
plot_classify(x21,x22,1,@parzen)
correct_rate_parzen1 = parzen_rate(x21, x22, y, y_target, 1, @parzen)
crp2 = parzen_rate(x21, x22, y, y_target, 0.5, @parzen)
crp3 = parzen_rate(x21, x22, y, y_target, 1.5, @parzen)
%KNN
fun = @KNN;
figure(6);
test_KNN(x2,5,fun)
figure(7);
test_KNN(x2,50,fun)
figure(8);
test_KNN(x2,200,fun)
correct_rate_KNN1 = KNN_rate(x21, x22, 200, y, y_target) 
crk2 = KNN_rate(x21, x22, 5, y, y_target)
crk3 = KNN_rate(x21, x22, 50, y, y_target)
figure(9)
plot_classify(x21,x22,50,@KNN)
%}

%注意需要运行时删除！！！！
%{
%3rd train_patterns, N = 5000(two patterns respectively 2500,2500)
x31 = mvnrnd([2,5],[1,0;0,2],2500);
x32 = mvnrnd([5,2],[0.5,0;0,1],2500);
x3 = [x31;x32];
figure(1);
plot(x31(:,1),x31(:,2),'+',x32(:,1),x32(:,2),'.')
%parzen
fun = @parzen;
figure(2);
test_parzen(x3,0.5,fun)
figure(3);
test_parzen(x3,1,fun)
figure(4);
test_parzen(x3,1.5,fun)
%parzen classifier
figure(5);
plot_classify(x31,x32,1,@parzen)
correct_rate_parzen1 = parzen_rate(x31, x32, y, y_target, 1, @parzen)
crp2 = parzen_rate(x31, x32, y, y_target, 0.5, @parzen)
crp3 = parzen_rate(x31, x32, y, y_target, 1.5, @parzen)
%KNN
fun = @KNN;
figure(6);
test_KNN(x3,10,fun)
figure(7);
test_KNN(x3,80,fun)
figure(8);
test_KNN(x3,500,fun)
correct_rate_KNN1 = KNN_rate(x31, x32, 80, y, y_target) 
crk2 = KNN_rate(x31, x32, 10, y, y_target)
crk3 = KNN_rate(x31, x32, 500, y, y_target)
figure(9)
plot_classify(x31,x32,80,@KNN)
%}

%注意需要运行时删除！！！！
%{
%4th train_patterns, N = 20000(two patterns respectively 10000,10000)
x41 = mvnrnd([2,5],[1,0;0,2],10000);
x42 = mvnrnd([5,2],[0.5,0;0,1],10000);
x4 = [x41;x42];
figure(1);
plot(x41(:,1),x41(:,2),'+',x42(:,1),x42(:,2),'.')
%parzen
fun = @parzen;
figure(2);
test_parzen(x4,0.5,fun)
figure(3);
test_parzen(x4,1,fun)
figure(4);
test_parzen(x4,1.5,fun)
%parzen classifier
figure(5);
plot_classify(x41,x42,1,@parzen)
correct_rate_parzen1 = parzen_rate(x41, x42, y, y_target, 1, @parzen)
crp2 = parzen_rate(x41, x42, y, y_target, 0.5, @parzen)
crp3 = parzen_rate(x41, x42, y, y_target, 1.5, @parzen)
%KNN
fun = @KNN;
figure(6);
test_KNN(x4,20,fun)
figure(7);
test_KNN(x4,150,fun)
figure(8);
test_KNN(x4,1000,fun)
correct_rate_KNN1 = KNN_rate(x41, x42, 150, y, y_target)
crk2 = KNN_rate(x41, x42, 20, y, y_target)
crk3 = KNN_rate(x41, x42, 1000, y, y_target)
figure(9)
plot_classify(x41,x42,150,@KNN)
%}