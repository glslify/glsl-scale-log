# glsl-scale-log

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

A logarithmic scale for [glslify](http://github.com/stackgl/glslify).

## Usage

[![NPM](https://nodei.co/npm/glsl-scale-log.png)](https://nodei.co/npm/glsl-scale-log/)

### `scale(float base, float value, vec2 domain)`

Returns a value between 0 and 1, depending on where along the
scale `value` lies between `domain.x` (min) and `domain.y`
(max).

`base` is the logarithmic base to use.

``` glsl
#pragma glslify: scale = require('glsl-scale-log')

float min   = 0.0;
float max   = 1000.0;
float value = 100.0;
float base  = 10.0;

float t = scale(base, value, vec2(min, max));
```

### `scale(float base, float value, vec2 domain, vec2 range)`

Similar to the above signature, however returns a value
between `range.x` and `range.y` instead of 0 and 1. Shorthand
for `mix(range.x, range.y, scale(...))`.

``` glsl
float t = scale(base, value, vec2(min, max), vec2(0.0, 1.0));
```

## Contributing

See [stackgl/contributing](https://github.com/stackgl/contributing) for details.

## License

MIT. See [LICENSE.md](http://github.com/stackgl/glsl-scale-log/blob/master/LICENSE.md) for details.
