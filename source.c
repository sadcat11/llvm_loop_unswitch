int main()
{
  int i, w, x[100], y[100];
  for (i = 0; i < 100; i++) {
    x[i] = i;
    y[i] = i;
  }
  for (i = 0; i < 100; i++) {
    x[i] += y[i];
    if (w)
      x[i] *= y[i];
  }
}