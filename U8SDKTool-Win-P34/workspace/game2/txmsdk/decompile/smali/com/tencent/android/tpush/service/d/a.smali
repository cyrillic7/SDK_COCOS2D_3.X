.class public Lcom/tencent/android/tpush/service/d/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/tencent/android/tpush/service/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/d/a;->a:Ljava/lang/String;

    .line 85
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/d/a;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)B
    .registers 2

    .prologue
    .line 273
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/a;->f(Landroid/content/Context;)I

    move-result v0

    .line 274
    sparse-switch v0, :sswitch_data_24

    .line 309
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 276
    :sswitch_9
    const/4 v0, 0x3

    goto :goto_8

    .line 279
    :sswitch_b
    const/4 v0, 0x2

    goto :goto_8

    .line 282
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_8

    .line 285
    :sswitch_f
    const/4 v0, 0x5

    goto :goto_8

    .line 288
    :sswitch_11
    const/4 v0, 0x4

    goto :goto_8

    .line 291
    :sswitch_13
    const/4 v0, 0x7

    goto :goto_8

    .line 294
    :sswitch_15
    const/4 v0, 0x6

    goto :goto_8

    .line 297
    :sswitch_17
    const/16 v0, 0x9

    goto :goto_8

    .line 300
    :sswitch_1a
    const/16 v0, 0x8

    goto :goto_8

    .line 303
    :sswitch_1d
    const/16 v0, 0xa

    goto :goto_8

    .line 306
    :sswitch_20
    const/16 v0, 0xb

    goto :goto_8

    .line 274
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_9
        0x4 -> :sswitch_d
        0x8 -> :sswitch_11
        0x10 -> :sswitch_f
        0x20 -> :sswitch_15
        0x40 -> :sswitch_13
        0x100 -> :sswitch_1a
        0x200 -> :sswitch_17
        0x400 -> :sswitch_1d
        0x800 -> :sswitch_20
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 353
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Context;)B

    move-result v0

    .line 354
    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 357
    :cond_e
    const-string v0, "10.0.0.172"

    .line 362
    :goto_10
    return-object v0

    .line 359
    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 360
    const-string v0, "10.0.0.200"

    goto :goto_10

    .line 362
    :cond_18
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 372
    .line 374
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/service/d/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_3a
    .catchall {:try_start_1 .. :try_end_e} :catchall_45

    move-result-object v1

    .line 376
    if-nez v1, :cond_18

    .line 390
    if-eqz v1, :cond_16

    .line 392
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_4d

    :cond_16
    :goto_16
    move-object v0, v6

    .line 395
    :cond_17
    :goto_17
    return-object v0

    .line 379
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 380
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_58
    .catchall {:try_start_18 .. :try_end_1e} :catchall_53

    move-result v0

    if-eqz v0, :cond_28

    .line 390
    if-eqz v1, :cond_26

    .line 392
    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_4f

    :cond_26
    :goto_26
    move-object v0, v6

    .line 395
    goto :goto_17

    .line 383
    :cond_28
    :try_start_28
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_58
    .catchall {:try_start_28 .. :try_end_31} :catchall_53

    move-result-object v0

    .line 390
    if-eqz v1, :cond_17

    .line 392
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_17

    .line 393
    :catch_38
    move-exception v1

    goto :goto_17

    .line 386
    :catch_3a
    move-exception v0

    .line 388
    :goto_3b
    :try_start_3b
    const-string v0, ""
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_55

    .line 390
    if-eqz v6, :cond_17

    .line 392
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_17

    .line 393
    :catch_43
    move-exception v1

    goto :goto_17

    .line 390
    :catchall_45
    move-exception v0

    move-object v1, v6

    :goto_47
    if-eqz v1, :cond_4c

    .line 392
    :try_start_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_51

    .line 395
    :cond_4c
    :goto_4c
    throw v0

    .line 393
    :catch_4d
    move-exception v0

    goto :goto_16

    :catch_4f
    move-exception v0

    goto :goto_26

    :catch_51
    move-exception v1

    goto :goto_4c

    .line 390
    :catchall_53
    move-exception v0

    goto :goto_47

    :catchall_55
    move-exception v0

    move-object v1, v6

    goto :goto_47

    .line 386
    :catch_58
    move-exception v0

    move-object v6, v1

    goto :goto_3b
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 408
    .line 410
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/service/d/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_41
    .catchall {:try_start_1 .. :try_end_e} :catchall_4c

    move-result-object v1

    .line 412
    if-nez v1, :cond_18

    .line 431
    if-eqz v1, :cond_16

    .line 433
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_54

    :cond_16
    :goto_16
    move-object v0, v6

    .line 436
    :cond_17
    :goto_17
    return-object v0

    .line 415
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 416
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 417
    const-string v0, "80"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_5d
    .catchall {:try_start_18 .. :try_end_23} :catchall_58

    .line 431
    if-eqz v1, :cond_17

    .line 433
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_17

    .line 434
    :catch_29
    move-exception v1

    goto :goto_17

    .line 421
    :cond_2b
    :try_start_2b
    const-string v0, "port"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    if-nez v0, :cond_39

    .line 423
    const-string v0, "80"
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_5d
    .catchall {:try_start_2b .. :try_end_39} :catchall_58

    .line 431
    :cond_39
    if-eqz v1, :cond_17

    .line 433
    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_17

    .line 434
    :catch_3f
    move-exception v1

    goto :goto_17

    .line 427
    :catch_41
    move-exception v0

    .line 429
    :goto_42
    :try_start_42
    const-string v0, "80"
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_5a

    .line 431
    if-eqz v6, :cond_17

    .line 433
    :try_start_46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_17

    .line 434
    :catch_4a
    move-exception v1

    goto :goto_17

    .line 431
    :catchall_4c
    move-exception v0

    move-object v1, v6

    :goto_4e
    if-eqz v1, :cond_53

    .line 433
    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_56

    .line 436
    :cond_53
    :goto_53
    throw v0

    .line 434
    :catch_54
    move-exception v0

    goto :goto_16

    :catch_56
    move-exception v1

    goto :goto_53

    .line 431
    :catchall_58
    move-exception v0

    goto :goto_4e

    :catchall_5a
    move-exception v0

    move-object v1, v6

    goto :goto_4e

    .line 427
    :catch_5d
    move-exception v0

    move-object v6, v1

    goto :goto_42
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 450
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/a;->f(Landroid/content/Context;)I

    move-result v1

    .line 451
    if-eq v1, v0, :cond_17

    const/16 v2, 0x10

    if-eq v1, v2, :cond_17

    const/16 v2, 0x40

    if-eq v1, v2, :cond_17

    const/16 v2, 0x200

    if-eq v1, v2, :cond_17

    const/16 v2, 0x400

    if-ne v1, v2, :cond_18

    .line 456
    :cond_17
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static f(Landroid/content/Context;)I
    .registers 7

    .prologue
    const/16 v2, 0x200

    const/16 v3, 0x100

    const/16 v1, 0x80

    .line 469
    :try_start_6
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 471
    if-nez v0, :cond_12

    move v0, v1

    .line 515
    :goto_11
    return v0

    .line 474
    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 475
    if-nez v0, :cond_1a

    move v0, v1

    .line 476
    goto :goto_11

    .line 477
    :cond_1a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 478
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 479
    const/4 v0, 0x2

    goto :goto_11

    .line 481
    :cond_2e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v4, "cmwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 483
    const/4 v0, 0x1

    goto :goto_11

    .line 484
    :cond_42
    const-string v4, "cmnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "epc.tmobile.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 486
    :cond_52
    const/4 v0, 0x4

    goto :goto_11

    .line 487
    :cond_54
    const-string v4, "uniwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 488
    const/16 v0, 0x10

    goto :goto_11

    .line 489
    :cond_5f
    const-string v4, "uninet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 490
    const/16 v0, 0x8

    goto :goto_11

    .line 491
    :cond_6a
    const-string v4, "wap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 492
    const/16 v0, 0x40

    goto :goto_11

    .line 493
    :cond_75
    const-string v4, "net"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 494
    const/16 v0, 0x20

    goto :goto_11

    .line 495
    :cond_80
    const-string v4, "ctwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    move v0, v2

    .line 496
    goto :goto_11

    .line 497
    :cond_8a
    const-string v4, "ctnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    move v0, v3

    .line 498
    goto/16 :goto_11

    .line 499
    :cond_95
    const-string v4, "3gwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 500
    const/16 v0, 0x400

    goto/16 :goto_11

    .line 501
    :cond_a1
    const-string v4, "3gnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 502
    const/16 v0, 0x800

    goto/16 :goto_11

    .line 503
    :cond_ad
    const-string v4, "#777"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 504
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_be} :catch_c7

    move-result v0

    if-lez v0, :cond_c4

    move v0, v2

    .line 506
    goto/16 :goto_11

    :cond_c4
    move v0, v3

    .line 508
    goto/16 :goto_11

    .line 512
    :catch_c7
    move-exception v0

    .line 513
    sget-object v2, Lcom/tencent/android/tpush/service/d/a;->a:Ljava/lang/String;

    const-string v3, "getMProxyType>>> "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cf
    move v0, v1

    .line 515
    goto/16 :goto_11
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 545
    if-nez p0, :cond_c

    .line 546
    const-string v0, "XGService"

    const-string v2, "@@ APNUtil @@ checkNetWork >>> context is null!"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 565
    :goto_b
    return v0

    .line 550
    :cond_c
    :try_start_c
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 552
    if-eqz v0, :cond_3b

    .line 553
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 555
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_3b

    .line 556
    const-string v0, "XGService"

    const-string v2, ">> APNUtil @@ checkNetWork >>> true"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_33

    .line 557
    const/4 v0, 0x1

    goto :goto_b

    .line 561
    :catch_33
    move-exception v0

    .line 562
    const-string v2, "XGService"

    const-string v3, ">> APNUtil @@ checkNetWork >>> "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :cond_3b
    const-string v0, "XGService"

    const-string v2, ">> APNUtil @@ checkNetWork >>> false"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 565
    goto :goto_b
.end method
