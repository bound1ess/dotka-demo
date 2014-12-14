# Dotka Demo Application

```shell
git clone https://github.com/bound1ess/dotka-demo.git && cd dotka-demo
bundle && bower-installer
sensible-browser 0.0.0.0:9292 && rackup
```
## What can be improved

- Caching (at the moment, load time for `/player/:account_id` and `/match/:id` is very high).
- More precise configuration and small code refactoring could be done.
- Better HTML code and overall UI (I am not a designer nor HTML master).

## License

MIT (see the `LICENSE` file).
