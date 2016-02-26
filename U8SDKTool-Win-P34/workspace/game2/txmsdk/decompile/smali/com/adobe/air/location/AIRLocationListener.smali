.class public Lcom/adobe/air/location/AIRLocationListener;
.super Ljava/lang/Object;
.source "AIRLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TIMEOUT_INTERVAL:I = 0x3a98


# instance fields
.field private m_geoObj:Lcom/adobe/air/location/Geolocation;


# direct methods
.method public constructor <init>(Lcom/adobe/air/location/Geolocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    return-void
.end method

.method private isRegionFullyContained(DDFDDF)Z
    .locals 9

    const/4 v0, 0x5

    new-array v8, v0, [F

    move-wide v0, p1

    move-wide v2, p3

    move-wide v4, p6

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    sub-float v1, p10, p5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 24

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v3, v3, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v3, v3, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v14, v2, Lcom/adobe/air/location/Geolocation;->m_gpsLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_gpsLongitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_gpsAltitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v13, v2, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v0, v20

    iput v0, v2, Lcom/adobe/air/location/Geolocation;->m_gpsVerticalAccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v0, v21

    iput v0, v2, Lcom/adobe/air/location/Geolocation;->m_gpsSpeed:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v3, v3, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/adobe/air/location/Geolocation;->m_gpsTimestamp:J

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v14, v2, Lcom/adobe/air/location/Geolocation;->m_latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_longitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_altitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v13, v2, Lcom/adobe/air/location/Geolocation;->m_horizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v0, v20

    iput v0, v2, Lcom/adobe/air/location/Geolocation;->m_verticalAccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v0, v21

    iput v0, v2, Lcom/adobe/air/location/Geolocation;->m_speed:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_timestamp:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v2, v2, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v4, v3, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v2, v4, v5}, Lcom/adobe/air/location/Geolocation;->updateGeolocationCache(J)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v14, v2, Lcom/adobe/air/location/Geolocation;->m_networkLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_networkLongitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_networkAltitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v13, v2, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v0, v20

    iput v0, v2, Lcom/adobe/air/location/Geolocation;->m_networkVerticalAccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v0, v21

    iput v0, v2, Lcom/adobe/air/location/Geolocation;->m_networkSpeed:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v3, v3, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/adobe/air/location/Geolocation;->m_networkTimestamp:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v2, v2, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v2, v2, Lcom/adobe/air/location/Geolocation;->m_networkTimestamp:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v4, v4, Lcom/adobe/air/location/Geolocation;->m_gpsTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v2, v2, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v3, v3, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v3, v2, Lcom/adobe/air/location/Geolocation;->m_gpsLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v5, v2, Lcom/adobe/air/location/Geolocation;->m_gpsLongitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v7, v2, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v8, v2, Lcom/adobe/air/location/Geolocation;->m_networkLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v10, v2, Lcom/adobe/air/location/Geolocation;->m_networkLongitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v12, v2, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/adobe/air/location/AIRLocationListener;->isRegionFullyContained(DDFDDF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v4, v2, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v2, v2, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-ne v1, v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v4, v2, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v2, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    goto :goto_1
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v4, v1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v2, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v4, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v2, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
