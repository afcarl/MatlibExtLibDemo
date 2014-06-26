__declspec(dllexport) double myhalf(double x) {
    return x/2;
}

__declspec(dllexport) int myadd(double* x, double* y, double v, unsigned int l) {
    for(;l+1>0;l--)
    {
        y[l] = x[l] + v;
    }
    return 0;
}
