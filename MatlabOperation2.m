function y = MatlabOperation2(x)
%¼ÆËãº¯Êý y = [lnx - logx^6 + 0.6e^x + x^4 + tan(0.2sin(x^2) + 8)]^0.5

y = (ln(x) - log(x.^6) + 0.6*e.^x + x.^4 + tan(0.2*sin(x.^2) + 8)).^0.5;

end