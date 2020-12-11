# TEST displace by shifting offsets, no motion needed

## ZERO

```bash
ecmcConfigOrDie "Cfg.SetAxisEncOffset(1,-22.54516)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(2,1.77764)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(3,-29.75000)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(4,0.60396)"
```

## TY +1

```bash
ecmcConfigOrDie "Cfg.SetAxisEncOffset(1,-21.54516)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(2,1.77764)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(3,-28.75000)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(4,0.60396)"
```

## TY-1

```bash
ecmcConfigOrDie "Cfg.SetAxisEncOffset(1,-23.54516)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(2,1.77764)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(3,-30.75000)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(4,0.60396)"
```

## RX

```bash
ecmcConfigOrDie "Cfg.SetAxisEncOffset(1,-21.54516)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(2,1.77764)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(3,-30.75000)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(4,0.60396)"
```

## RZ

```bash
ecmcConfigOrDie "Cfg.SetAxisEncOffset(1,-22.54516)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(2,2.77764)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(3,-29.75000)"
ecmcConfigOrDie "Cfg.SetAxisEncOffset(4,1.60396)"
```
