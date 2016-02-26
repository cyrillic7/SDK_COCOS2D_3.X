.class public Lcom/tencent/msdk/stat/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final APN_PROP_PROXY:Ljava/lang/String; = "proxy"

.field private static PREFERRED_APN_URI:Landroid/net/Uri;

.field private static mImei:Ljava/lang/String;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/tencent/msdk/stat/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/msdk/stat/DeviceInfo;->$assertionsDisabled:Z

    .line 40
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    return-void

    .line 36
    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    return-void
.end method

.method public static getApnProxy(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 235
    const/4 v6, 0x0

    .line 237
    .local v6, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/stat/DeviceInfo;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_37
    .catchall {:try_start_2 .. :try_end_f} :catchall_45

    move-result-object v6

    .line 239
    if-nez v6, :cond_18

    .line 250
    if-eqz v6, :cond_17

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_17
    :goto_17
    return-object v8

    .line 240
    :cond_18
    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_37
    .catchall {:try_start_18 .. :try_end_1e} :catchall_45

    move-result v0

    if-eqz v0, :cond_27

    .line 250
    if-eqz v6, :cond_17

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 244
    :cond_27
    :try_start_27
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_37
    .catchall {:try_start_27 .. :try_end_30} :catchall_45

    move-result-object v8

    .line 250
    .local v8, "strResult":Ljava/lang/String;
    if-eqz v6, :cond_17

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 246
    .end local v8    # "strResult":Ljava/lang/String;
    :catch_37
    move-exception v7

    .line 247
    .local v7, "e":Ljava/lang/Exception;
    :try_start_38
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_45

    .line 250
    if-eqz v6, :cond_17

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_45
    move-exception v0

    if-eqz v6, :cond_4b

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v0
.end method

.method public static getImei()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    sget-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 111
    sget-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 128
    .local v0, "activity":Landroid/app/Activity;
    :goto_a
    return-object v2

    .line 113
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_b
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .restart local v0    # "activity":Landroid/app/Activity;
    if-nez v0, :cond_1c

    .line 115
    const-string v2, ""

    sput-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 116
    sget-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    goto :goto_a

    .line 118
    :cond_1c
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 120
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2d

    .line 121
    const-string v2, ""

    sput-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 122
    sget-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    goto :goto_a

    .line 124
    :cond_2d
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 125
    sget-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 126
    const-string v2, ""

    sput-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 128
    :cond_3f
    sget-object v2, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    goto :goto_a
.end method

.method private getRAMInfo()Ljava/lang/String;
    .registers 11

    .prologue
    .line 269
    const-string v6, "/proc/meminfo"

    .line 272
    .local v6, "str1":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 274
    .local v2, "initialMemory":J
    :try_start_4
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 275
    .local v5, "localFileReader":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v4, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 276
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "str2":Ljava/lang/String;
    if-nez v7, :cond_1c

    .line 278
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 279
    const-string v8, ""

    .line 289
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "str2":Ljava/lang/String;
    :goto_1b
    return-object v8

    .line 281
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v7    # "str2":Ljava/lang/String;
    :cond_1c
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    int-to-long v2, v8

    .line 285
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_45} :catch_47

    move-result-object v8

    goto :goto_1b

    .line 287
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "str2":Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    const-string v8, ""

    goto :goto_1b
.end method

.method private getROMInfo()Ljava/lang/String;
    .registers 11

    .prologue
    .line 295
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 296
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 297
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 298
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 301
    .local v6, "totalBlocks":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-long v8, v6, v0

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "total":Ljava/lang/String;
    return-object v4
.end method


# virtual methods
.method public getAllDeviceInfo()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 356
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "mid"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "qImei"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getQImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v2, "appVersion"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v2, "appVersionCode"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    const-string v2, "osSystem"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v2, "deviceResolution"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v2, "deviceApn"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v2, "mobileService"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getProvidersName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v2, "deviceTradeMark"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v2, "deviceManufacturer"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v2, "deviceModel"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v2, "deviceImei"

    invoke-static {}, Lcom/tencent/msdk/stat/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v2, "deviceName"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v2, "deviceRom"

    invoke-direct {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getROMInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v2, "deviceRam"

    invoke-direct {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getRAMInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v2, "deviceCPU"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getCpuInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_93} :catch_94

    .line 382
    :goto_93
    return-object v0

    .line 380
    :catch_94
    move-exception v1

    .line 381
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_93
.end method

.method public getApn()Ljava/lang/String;
    .registers 9

    .prologue
    .line 166
    const-string v0, ""

    .line 167
    .local v0, "apn":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 169
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_17

    .line 170
    const-string v6, ""

    .line 224
    :goto_16
    return-object v6

    .line 172
    :cond_17
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 173
    .local v3, "info":Landroid/net/NetworkInfo;
    if-nez v3, :cond_20

    .line 174
    const-string v6, ""

    goto :goto_16

    .line 176
    :cond_20
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "typeName":Ljava/lang/String;
    if-nez v5, :cond_29

    .line 178
    const-string v6, ""

    goto :goto_16

    .line 181
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "typeName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 183
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 184
    const-string v0, "wifi"

    :cond_4f
    :goto_4f
    move-object v6, v0

    .line 224
    goto :goto_16

    .line 186
    :cond_51
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5a

    .line 187
    const-string v6, ""

    goto :goto_16

    .line 189
    :cond_5a
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "extraInfo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extraInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 193
    const-string v6, "cmwap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 194
    const-string v0, "cmwap"

    goto :goto_4f

    .line 195
    :cond_85
    const-string v6, "cmnet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_95

    const-string v6, "epc.tmobile.com"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 197
    :cond_95
    const-string v0, "cmnet"

    goto :goto_4f

    .line 198
    :cond_98
    const-string v6, "uniwap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 199
    const-string v0, "uniwap"

    goto :goto_4f

    .line 200
    :cond_a3
    const-string v6, "uninet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 201
    const-string v0, "uninet"

    goto :goto_4f

    .line 202
    :cond_ae
    const-string v6, "wap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 203
    const-string v0, "wap"

    goto :goto_4f

    .line 204
    :cond_b9
    const-string v6, "net"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 205
    const-string v0, "net"

    goto :goto_4f

    .line 206
    :cond_c4
    const-string v6, "ctwap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 207
    const-string v0, "ctwap"

    goto :goto_4f

    .line 208
    :cond_cf
    const-string v6, "ctnet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 209
    const-string v0, "ctnet"

    goto/16 :goto_4f

    .line 210
    :cond_db
    const-string v6, "3gwap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 211
    const-string v0, "3gwap"

    goto/16 :goto_4f

    .line 212
    :cond_e7
    const-string v6, "3gnet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 213
    const-string v0, "3gnet"

    goto/16 :goto_4f

    .line 215
    :cond_f3
    const-string v6, "#777"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 216
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/stat/DeviceInfo;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "proxy":Ljava/lang/String;
    if-eqz v4, :cond_113

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_113

    .line 218
    const-string v0, "cdma wap"

    goto/16 :goto_4f

    .line 220
    :cond_113
    const-string v0, "cdma net"

    goto/16 :goto_4f
.end method

.method public getBrand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuInfo()Ljava/lang/String;
    .registers 12

    .prologue
    .line 308
    const/4 v4, -0x1

    .line 309
    .local v4, "maxFreq":I
    const/4 v5, 0x0

    .line 312
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const-string v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_5d

    .line 314
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .local v6, "reader":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 315
    .local v0, "done":Z
    :cond_c
    :goto_c
    if-nez v0, :cond_15

    .line 316
    :try_start_e
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2d

    .line 318
    const/4 v0, 0x1

    .line 331
    .end local v3    # "line":Ljava/lang/String;
    :cond_15
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_41

    move-object v5, v6

    .line 336
    .end local v0    # "done":Z
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :goto_19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 321
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "done":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :cond_2d
    :try_start_2d
    const-string v9, "\\s+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "splits":[Ljava/lang/String;
    sget-boolean v9, Lcom/tencent/msdk/stat/DeviceInfo;->$assertionsDisabled:Z

    if-nez v9, :cond_47

    array-length v9, v7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_47

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_41} :catch_41

    .line 332
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "splits":[Ljava/lang/String;
    :catch_41
    move-exception v1

    move-object v5, v6

    .line 333
    .end local v0    # "done":Z
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :goto_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 323
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "done":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "splits":[Ljava/lang/String;
    :cond_47
    const/4 v9, 0x1

    :try_start_48
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 324
    .local v8, "timeInState":I
    if-lez v8, :cond_c

    .line 325
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v2, v9, 0x3e8
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_59} :catch_41

    .line 326
    .local v2, "freq":I
    if-le v2, v4, :cond_c

    .line 327
    move v4, v2

    goto :goto_c

    .line 332
    .end local v0    # "done":Z
    .end local v2    # "freq":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .end local v7    # "splits":[Ljava/lang/String;
    .end local v8    # "timeInState":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_5d
    move-exception v1

    goto :goto_43
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mid/api/MidService;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "mid":Ljava/lang/String;
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .registers 6

    .prologue
    .line 96
    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_f

    .line 99
    const-string v2, ""

    .line 106
    :cond_e
    :goto_e
    return-object v2

    .line 101
    :cond_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 102
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v2, ""

    .line 103
    .local v2, "network":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 104
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string v0, "android"

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 345
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 346
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 347
    .local v1, "myDevice":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_c

    .line 348
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_c
    return-object v0
.end method

.method public getProvidersName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "ProvidersName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 151
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "IMSI":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 153
    const-string v3, ""

    .line 162
    :goto_13
    return-object v3

    .line 155
    :cond_14
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 156
    :cond_24
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    :cond_26
    :goto_26
    move-object v3, v1

    .line 162
    goto :goto_13

    .line 157
    :cond_28
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 158
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_26

    .line 159
    :cond_33
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 160
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_26
.end method

.method public getQImei()Ljava/lang/String;
    .registers 4

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "qImei":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v1

    .line 138
    :goto_5
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 139
    const-string v1, ""

    .line 142
    .end local v1    # "qImei":Ljava/lang/String;
    :cond_d
    return-object v1

    .line 135
    .restart local v1    # "qImei":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public getResolution()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_f

    .line 89
    const-string v1, ""

    .line 91
    :goto_e
    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public getVersionCode()I
    .registers 6

    .prologue
    .line 64
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget v2, v2, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    if-ltz v2, :cond_f

    .line 65
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget v2, v2, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    .line 73
    :goto_e
    return v2

    .line 69
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 70
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 71
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_1f
    move-exception v1

    .line 72
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 73
    const/4 v2, -0x1

    goto :goto_e
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 51
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    .line 59
    :goto_12
    return-object v2

    .line 55
    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_12

    .line 57
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_23
    move-exception v1

    .line 58
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 59
    const-string v2, ""

    goto :goto_12
.end method
