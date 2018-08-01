# Msgpush-ruby experiments

This is an toy app, which allows us to experiment stateful and stateless interactive web applications. For each request received, it allocates some memory (configurable via MSG_SIZE environment variable) and populates a ring buffer. The latter also has its size configurable via WINDOW_SIZE environment variable.

The main goal of this repository is to benchmark the impact of the ruby garbage collection on interactive cloud services' latency, as well as compare the benefit of tools like [out-of-band GC[http://unicorn.bogomips.org/Unicorn/OobGC.html] and [GCI](https://github.com/gcinterceptor/gci-proxy), which try to improve the GC damage. 

Disclaimer:

* I am no ruby expert (not even a ruby developer actually), so PRs with improvements or issues with comments are welcome!
* Not comparing with OOBGC because [it is not supported+relevant in Ruby 2.5](https://github.com/tmm1/gctools/issues/16). If you think it is important, please chime in
