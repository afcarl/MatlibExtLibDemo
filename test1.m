loadlibrary('test1.dll', 'test1.h');
libisloaded('test1');

% expect result : 1.1
a = 2.2
b = calllib('test1', 'myhalf', a) 


% expect result : [2.5, 3.5, 4.5, 5.5]
x = [1.1, 2.1, 3.1, 4.1]
y = zeros(size(x));
px = libpointer('doublePtr', x);
py = libpointer('doublePtr', y);
calllib('test1', 'myadd', px, py, 1.4, length(x));
y = py.val
unloadlibrary('test1');