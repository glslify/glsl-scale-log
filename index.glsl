float handleLog(float x, float b) {
  return log(max(x, 0.0)) / log(max(b, 0.0));
}

float scaleLog(float base, float value, vec2 valueDomain) {
  return handleLog(value - valueDomain.x, base) / handleLog(valueDomain.y - valueDomain.x, base);
}

float scaleLog(float base, float value, vec2 valueDomain, vec2 valueRange) {
  return mix(valueRange.x, valueRange.y, scaleLog(base, value, valueDomain));
}

#pragma glslify: export(scaleLog)
