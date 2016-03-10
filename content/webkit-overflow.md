# Webkit Overflow

Recently a webkit bug was discovered which prevented border-radius from working as expected. The desired effect was to round the edges of a parent element which would mask the overflow of its child elements.

The solution was to create a webkit mask as demonstarted in this example:
```
/**
 * Create dom elements.
 */
Banner.prototype.createElements = function() {
  this.container = this.smartObject({
    height: 100,
    width: 100,
    parent: this.banner,
    overflow: 'hidden'
  });

    this.innerElement = this.smartObject({
      backgroundColor: 'red',
      height: 100,
      width: 100,
      parent: this.container
    });
};

/**
 * Setup initial element states.
 */
Banner.prototype.setup = function() {
  this.container.set({borderRadius: '20px'});
  this.container.style.webkitMask = 'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAIAAACQd1PeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAA5JREFUeNpiYGBgAAgwAAAEAAGbA+oJAAAAAElFTkSuQmCC)';
};
```

The webkit mask acts as a fallback for `border-radius` when rounding corners of an `overflow: hidden` element.
