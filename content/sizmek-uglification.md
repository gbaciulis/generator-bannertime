# Sizmek uglification

Recently found an issue where the Sizmek platform was unable to scan an uglified version of the code to pick up `EB.clickthrough('interaction-name');` or `EB.userActionCounter('interaction-name');`.

I'm assuming it has something to do with how the RegEx in the parsing program is identifying these functions.

## Possible solutions

**Beautify the JS**
In the javascript.js gulp task I used the following settings in the `uglify()` function.
```
uglify({
  mangle: false,
  output: {beautify: true},
  compress: {
    sequences: false,
    unused: false
  }
})
```

**Declare it in the HTML**
To keep the uglified version of the code, you could also place a copy of the interactions in the HTML in an uncalled function.
```
<script type="text/javascript">
  Banner.prototype.sizmekEventLoader = function() {
    EB.clickthrough('interaction-name');
    EB.userActionCounter('interaction-name');
  };
</script>
```

This will allow the platform to pick up the interactions and register them against the creative so the metrics can be tracked in the platform.

This method is also appropriate when using dynamic variables in a creative, such as:
```
var myVar = 'foo';
EB.clickthrough(myVar);
```
```
<script type="text/javascript">
  Banner.prototype.sizmekEventLoader = function() {
    EB.clickthrough('foo');
  };
</script>
```
