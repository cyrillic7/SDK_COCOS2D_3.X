.class public Lcom/tencent/tmassistantbase/util/GlobalUtil;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final SharedPreferencesName:Ljava/lang/String; = "TMAssistantSDKSharedPreference"

.field protected static final TAG:Ljava/lang/String;

.field protected static mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

.field protected static mMemUUID:I


# instance fields
.field public final JCE_CMDID_Empty:I

.field public final JCE_CMDID_GetAppSimpleDetail:I

.field public final JCE_CMDID_GetAppUpdate:I

.field public final JCE_CMDID_GetAuthorized:I

.field public final JCE_CMDID_GetSettings:I

.field public final JCE_CMDID_ReportLog:I

.field protected mContext:Landroid/content/Context;

.field public mJCECmdIdMap:Ljava/util/HashMap;

.field public mQUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mMemUUID:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mQUA:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_Empty:I

    .line 75
    iput v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_ReportLog:I

    .line 76
    iput v3, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetSettings:I

    .line 77
    iput v4, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetAppUpdate:I

    .line 78
    iput v5, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetAuthorized:I

    .line 79
    iput v6, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetAppSimpleDetail:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    .line 87
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ReportLog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetAppUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetAuthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetAppSimpleDetail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public static String2List(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    .prologue
    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 374
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 375
    const/4 v0, 0x0

    :goto_12
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 376
    aget-object v3, v2, v0

    .line 377
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 378
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 382
    :cond_23
    return-object v1
.end method

.method public static assistantErrorCode2SDKErrorCode(I)I
    .registers 2

    .prologue
    const/16 v0, 0x25c

    .line 526
    .line 527
    sparse-switch p0, :sswitch_data_2c

    .line 580
    :goto_5
    :sswitch_5
    return v0

    .line 529
    :sswitch_6
    const/4 v0, 0x0

    .line 530
    goto :goto_5

    .line 535
    :sswitch_8
    const/16 v0, 0x2c5

    .line 536
    goto :goto_5

    .line 538
    :sswitch_b
    const/16 v0, 0x2c4

    .line 539
    goto :goto_5

    .line 541
    :sswitch_e
    const/16 v0, 0x2da

    .line 542
    goto :goto_5

    .line 544
    :sswitch_11
    const/16 v0, 0x2bf

    .line 545
    goto :goto_5

    .line 547
    :sswitch_14
    const/4 v0, 0x1

    .line 548
    goto :goto_5

    .line 550
    :sswitch_16
    const/16 v0, 0x2db

    .line 551
    goto :goto_5

    .line 553
    :sswitch_19
    const/16 v0, 0x2bc

    .line 554
    goto :goto_5

    .line 556
    :sswitch_1c
    const/16 v0, 0x2dc

    .line 557
    goto :goto_5

    .line 559
    :sswitch_1f
    const/16 v0, 0x259

    .line 560
    goto :goto_5

    .line 565
    :sswitch_22
    const/16 v0, 0x25a

    .line 566
    goto :goto_5

    .line 571
    :sswitch_25
    const/16 v0, 0x25e

    .line 572
    goto :goto_5

    .line 574
    :sswitch_28
    const/16 v0, 0x2bd

    .line 575
    goto :goto_5

    .line 527
    nop

    :sswitch_data_2c
    .sparse-switch
        -0x3e8 -> :sswitch_5
        -0x1c -> :sswitch_28
        -0x1b -> :sswitch_25
        -0x1a -> :sswitch_5
        -0x19 -> :sswitch_22
        -0x18 -> :sswitch_5
        -0x17 -> :sswitch_1f
        -0x16 -> :sswitch_1c
        -0x15 -> :sswitch_19
        -0x10 -> :sswitch_16
        -0xf -> :sswitch_14
        -0xd -> :sswitch_11
        -0xc -> :sswitch_e
        -0xb -> :sswitch_b
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_6
    .end sparse-switch
.end method

.method public static assistantState2SDKState(I)I
    .registers 2

    .prologue
    .line 492
    .line 493
    packed-switch p0, :pswitch_data_12

    .line 513
    :pswitch_3
    const/4 v0, 0x0

    .line 516
    :goto_4
    return v0

    .line 495
    :pswitch_5
    const/4 v0, 0x2

    .line 496
    goto :goto_4

    .line 498
    :pswitch_7
    const/4 v0, 0x1

    .line 499
    goto :goto_4

    .line 501
    :pswitch_9
    const/4 v0, 0x3

    .line 502
    goto :goto_4

    .line 504
    :pswitch_b
    const/4 v0, 0x4

    .line 505
    goto :goto_4

    .line 507
    :pswitch_d
    const/4 v0, 0x5

    .line 508
    goto :goto_4

    .line 510
    :pswitch_f
    const/4 v0, 0x6

    .line 511
    goto :goto_4

    .line 493
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public static calcMD5AsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 335
    const-string v0, ""

    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 337
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 340
    :try_start_d
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 342
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 343
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 345
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    :goto_24
    array-length v4, v2

    if-ge v1, v4, :cond_35

    .line 347
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 349
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_38} :catch_3a

    move-result-object v0

    .line 354
    :cond_39
    :goto_39
    return-object v0

    .line 350
    :catch_3a
    move-exception v1

    .line 351
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_39
.end method

.method public static deleteOldDB(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 604
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 605
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 608
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 609
    const-string v0, "GlobalUtil"

    const-string v1, "deleteDB"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    .line 616
    :cond_27
    :goto_27
    return-void

    .line 610
    :catch_28
    move-exception v0

    .line 611
    const-string v0, "GlobalUtil"

    const-string v1, "deleteDB failed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    if-eqz p0, :cond_7

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 178
    if-eqz p0, :cond_12

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 182
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 183
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_13

    .line 189
    :cond_12
    :goto_12
    return v0

    .line 184
    :catch_13
    move-exception v1

    .line 185
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_12
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;
    .registers 2

    .prologue
    .line 95
    const-class v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    if-nez v0, :cond_e

    .line 96
    new-instance v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    .line 98
    :cond_e
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMemUUID()I
    .registers 3

    .prologue
    .line 363
    const-class v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mMemUUID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mMemUUID:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNetStatus()Ljava/lang/String;
    .registers 5

    .prologue
    .line 625
    const-class v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 627
    if-nez v0, :cond_11

    .line 628
    const-string v0, ""
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_61

    .line 653
    :goto_f
    monitor-exit v1

    return-object v0

    .line 632
    :cond_11
    :try_start_11
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 633
    const-string v0, ""
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c
    .catchall {:try_start_11 .. :try_end_1b} :catchall_61

    goto :goto_f

    .line 635
    :catch_1c
    move-exception v0

    .line 636
    :try_start_1d
    const-string v0, ""

    goto :goto_f

    .line 639
    :cond_20
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 640
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 641
    if-nez v0, :cond_31

    .line 642
    const-string v0, ""

    goto :goto_f

    .line 644
    :cond_31
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 645
    const-string v0, "wifi"

    goto :goto_f

    .line 647
    :cond_3b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 648
    if-nez v0, :cond_44

    .line 649
    const-string v0, ""

    goto :goto_f

    .line 651
    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 652
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netInfo  =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_61

    goto :goto_f

    .line 625
    :catchall_61
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDBExist(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 590
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 591
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 593
    const/4 v0, 0x1

    .line 596
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isNetworkConncted()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 658
    if-nez v0, :cond_13

    .line 659
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v2, "GlobalUtil.getInstance().getContext() == null."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_12
    return v1

    .line 664
    :cond_13
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 665
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_27

    .line 667
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_25
    move v1, v0

    .line 669
    goto :goto_12

    :cond_27
    move v0, v1

    goto :goto_25
.end method

.method public static updateFilePathAuthorized(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 464
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 466
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 467
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 469
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_87} :catch_88

    .line 483
    :goto_87
    return-void

    .line 480
    :catch_88
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87
.end method


# virtual methods
.method public canReportValue()Z
    .registers 3

    .prologue
    .line 397
    const-string v0, "wifi"

    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    .line 113
    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    .line 114
    return-void
.end method

.method public getAndroidIdInPhone()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 280
    :goto_6
    return-object v0

    .line 265
    :cond_7
    const/4 v0, 0x2

    :try_start_8
    new-array v0, v0, [Ljava/lang/String;

    .line 266
    sget-boolean v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    if-nez v0, :cond_21

    .line 267
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMEIInfoMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_18
    if-eqz v0, :cond_2c

    array-length v2, v0

    if-lez v2, :cond_2c

    .line 273
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_6

    .line 269
    :cond_21
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMEIInfoNormalMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 275
    :cond_2c
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 276
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_6

    .line 278
    :catch_3d
    move-exception v0

    .line 279
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v3, "getImei Exception"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 280
    goto :goto_6
.end method

.method public getImsi()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 305
    :goto_6
    return-object v0

    .line 290
    :cond_7
    const/4 v0, 0x2

    :try_start_8
    new-array v0, v0, [Ljava/lang/String;

    .line 291
    sget-boolean v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    if-nez v0, :cond_21

    .line 292
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMSIInfoMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_18
    if-eqz v0, :cond_2c

    array-length v2, v0

    if-lez v2, :cond_2c

    .line 298
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_6

    .line 294
    :cond_21
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMSIInfoNormalMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 300
    :cond_2c
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 301
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_6

    .line 303
    :catch_3d
    move-exception v0

    .line 304
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v3, "getImsi Exception"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 305
    goto :goto_6
.end method

.method public getJceCmdIdByClassName(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 123
    if-nez p1, :cond_5

    move v0, v2

    .line 139
    :goto_4
    return v0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3a

    .line 128
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    if-eqz v0, :cond_13

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_3a
    move v0, v2

    .line 139
    goto :goto_4
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 311
    const/4 v0, 0x0

    .line 323
    :goto_5
    return-object v0

    .line 315
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 316
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_1d

    .line 318
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 320
    :cond_1d
    const-string v0, ""
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_5

    .line 322
    :catch_20
    move-exception v0

    .line 323
    const-string v0, ""

    goto :goto_5
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 145
    const-string v0, ""

    .line 148
    :goto_6
    return-object v0

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 148
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getNetworkType()I
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 154
    const/4 v0, 0x0

    .line 157
    :goto_5
    return v0

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 157
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_5
.end method

.method public getPhoneGuid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 234
    const-string v0, ""

    .line 240
    :goto_6
    return-object v0

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1b

    .line 238
    const-string v1, "TMAssistantSDKPhoneGUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 240
    :cond_1b
    const-string v0, ""

    goto :goto_6
.end method

.method public getQQDownloaderAPILevel()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 409
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 410
    const-string v1, "SelfUpdateSDK"

    const-string v2, "context == null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_c
    :goto_c
    return v0

    .line 414
    :cond_d
    const-string v1, "SelfUpdateSDK"

    const-string v2, "getQQDownloaderAPILevel"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :try_start_14
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 417
    const-string v2, "com.tencent.android.qqdownloader"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 418
    const-string v2, "SelfUpdateSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    if-eqz v1, :cond_c

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 420
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.android.qqdownloader.sdk.apilevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 421
    const-string v2, "SelfUpdateSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_60} :catch_62

    move v0, v1

    .line 422
    goto :goto_c

    .line 426
    :catch_62
    move-exception v1

    .line 427
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public getQQDownloaderVersionCode()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 457
    :cond_5
    :goto_5
    return v0

    .line 442
    :cond_6
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_5

    .line 446
    :try_start_e
    const-string v2, "com.tencent.android.qqdownloader"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_5

    .line 450
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_5

    .line 451
    :catch_1a
    move-exception v1

    .line 452
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/tencent/tmassistantbase/util/QUASetting;

    invoke-direct {v0, p1}, Lcom/tencent/tmassistantbase/util/QUASetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/QUASetting;->buildQUA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mQUA:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/tencent/tmassistantbase/util/TMLog;->initTMLog(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public setNetTypeValue(B)V
    .registers 2

    .prologue
    .line 390
    return-void
.end method

.method public setPhoneGuid(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 258
    :cond_4
    :goto_4
    return-void

    .line 252
    :cond_5
    if-eqz p1, :cond_4

    .line 253
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_4

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMAssistantSDKPhoneGUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method
