function y = convo(u, v)
  m = length(u);
  n = length(v);
  tam = m + n - 1;
  w = zeros(1, tam);
  for k = 1:tam
    for j = m
        disp(j)
      w(k) = w(k) + u(j) * v(k - j + 1);
    end
  end
  y = w;
end