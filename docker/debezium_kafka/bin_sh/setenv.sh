#
# Enter app specifics in this file.
#

# Cluster level variables:
# ------------------------
# BASE_DIR - snappydata-addon base dir
# ETC_DIR - Cluster etc dir
# LOG_DIR - Cluster log dir

# App level variables:
# --------------------
# APPS_DIR - <padogrid-workspace>/apps dir
# APP_DIR - App base dir
# APP_ETC_DIR - App etc dir
# APP_LOG_DIR - App log dir

# Set JAVA_OPT to include your app specifics.
JAVA_OPTS="-Xms256m -Xmx256m"

CLASSPATH="$CLASSPATH:$APP_DIR/padogrid/plugins/*"
if [[ ${OS_NAME} == CYGWIN* ]]; then
   CLASSPATH="$(cygpath -wp "$CLASSPATH")"
fi

# SnappyData docker name or prefix
SNAPPYDATA_DOCKER_NAME="snappy"

# SnappyData docker directory path
SNAPPYDATA_DOCKER_DIR="$PADOGRID_WORKSPACE/docker/$SNAPPYDATA_DOCKER_NAME"

# SnppyData Docker network name
DOCKER_SNAPPYDATA_NETWORK="${SNAPPYDATA_DOCKER_NAME}_default"

# Lcator container name
DOCKER_LOCATOR_NAME="${SNAPPYDATA_DOCKER_NAME}_locator_1"
