# AGIR

ECMC motion module for SLS 2.0 girder mover system

## Usage

### MACROS
```bash
#- optional
#- DEV              aka prefix, defaults to 'AGIR-TEST'
#- Synchronization  optional parameter to disable synchronization, `Synchronization=[false,False,0]`
#- 
#- mandatory
#- HO_TY1           home offset 1st wedge, defaults to 0
#- HO_TX1           home offset 1st 'roll joint', defaults to 0
#- HO_TY2           home offset 2nd wedge, defaults to 0
#- HO_TX2           home offset 2nd 'roll joint', defaults to 0
```

### Example IOC
```bash
#- require the ECMC_AGIR module
#- this calls ${ECMC_AGIR_DIR}startup.cmd, which in turn pulls together all dependencies
require ECMC_AGIR, IBS

#- instantiate girder
#- DEV = AGIR-TEST
#- Synchronization ON
#- HomeOffsets for prototype-rig in OTLA
runScript $(ECMC_AGIR_DIR)/addGirder.iocsh, "DEV='AGIR-TEST',Synchronization=True,HO_TY1=-19.71609,HO_TY2=-29.68623,HO_TX1=2.42422,HO_TX2=0.70461"
```

## Axes

### pysical axes

Four Beckhoff AM8122 motors

- M1.1: y-translation 1, 2 degree wedge
- M1.2: x-translation 1, induces roll (Rz)
- M2.1: y-translation 2, 2 degree wedge
- M2.2: x-translation 2, induces roll (Rz)

### virtual axes

- Ty: Heave; TY.vax
- Rx: Pitch; RZ.vax
- Rz: Roll; RZ.vax

### kinematics

There is a separate document describing the kinematics in detail.

#### forward

- TY.sax
- RX.sax
- RZ.sax

#### reverse

- M1.1.sax
- M1.2.sax
- M2.1.sax
- M2.2.sax

## GUI

some basic GUIs are avaiable so far.

Ensure the ECMC host is in the `EPICS_CA_ADDR_LIST`

I.e. for `sf-ecmc-02` in OTLA

```bash
export EPICS_CA_ADDR_LIST="${EPICS_CA_ADDR_LIST} 129.129.238.196"
```

### ECMC-Axes overview

```bash
caqtdm -macro "IOC=sf-ecmc-02,SYS=AGIR-TEST" AGIR.ui
```

### Beckhoff drive overview

```bash
caqtdm -macro "IOC=sf-ecmc-02,HWType=EP7211-0034_ALL,MasterID=0,SlaveID1=0,SlaveID2=1,SlaveID3=3,SlaveID4=3" AGIR_Beckhoff.ui
```

