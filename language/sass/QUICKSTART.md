# SASS - Quickstart
**1. Variables**
```
$border: 1px solid black;
$font-size: 24px;

html {
  border: $border;
  font-size: $font-size;
}
```

**2. Nesting**
```
nav {
  a {
    color: red;
  }

  li {
    color: blue;
  }

  ul {
    color: green;
  }
}
```

**3. Modules**
```
$color-primary: black;
$color-accent: white;

// In another file
@use 'colors'

.black-white {
  background-color: $color-primary;
  color: $color-accent;
}
```

**4. Mixins**
```
// Without parameters
@mixin shadowed-border() {
  border: 1px solid black;
  margin: 10px;
  padding: 10px;
}

// With parameters (and default value)
@mixin black-background($color: white) {
  background-color: black;
  color: $color;
}

// Usage
.banner {
  @include shadowed-border;
}

.title {
  @include black-background($color: yellow);
}

// Usage within another mixin
@mixin spaced-box() {
  display: flex;
  justify-content: space-between;
  width: 100%;
  
  @include shadowed-border();
}
```

**5. Inheritance**
```
%white-header {
  color: white;
  font-size: 32px;
  margin-bottom: 10px;
}

.title {
  @extend %white-header;
}

.title-dark {
  @extend %white-header;

  color: black;
}
```

**6. Operators**
```
@use 'sass:math'

.banner {
  width: 100%;
}

.banner__content {
   max-height: math.div(100px, 200px) * 100%;
   max-width: math.div(100px, 200px) * 50%;
}
```