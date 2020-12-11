require ecmccfg dev

############################################
# motorName = foobar1
epicsEnvSet("motorName",  "foobar1")
# echo ${motorName}
echo ${motorName}

# test = TEST1_${motorName}
epicsEnvSet("test",  "TEST1_${motorName}")
# echo ${test}
echo ${test}

# motorName = foobar2
epicsEnvSet("motorName",  "foobar2")
epicsEnvSet("test",  "TEST2_${motorName}")

# unset motorName
epicsEnvUnset(motorName)
# echo ${motorName}
echo ${motorName}

# motorName = foobar3
epicsEnvSet("motorName",  "foobar3")
epicsEnvSet("test",  "TEST3_${motorName}")
# echo ${test}
echo ${test}

################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
