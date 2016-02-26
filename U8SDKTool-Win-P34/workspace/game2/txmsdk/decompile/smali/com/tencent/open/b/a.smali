.class public Lcom/tencent/open/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/tencent/open/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/b/a;->a:Ljava/lang/String;

    .line 91
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/b/a;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    invoke-static {p0}, Lcom/tencent/open/b/a;->d(Landroid/content/Context;)I

    move-result v0

    .line 136
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 137
    const-string v0, "wifi"

    .line 164
    :cond_9
    :goto_9
    return-object v0

    .line 138
    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 139
    const-string v0, "cmwap"

    goto :goto_9

    .line 140
    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    .line 141
    const-string v0, "cmnet"

    goto :goto_9

    .line 142
    :cond_16
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    .line 143
    const-string v0, "uniwap"

    goto :goto_9

    .line 144
    :cond_1d
    const/16 v1, 0x8

    if-ne v0, v1, :cond_24

    .line 145
    const-string v0, "uninet"

    goto :goto_9

    .line 146
    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2b

    .line 147
    const-string v0, "wap"

    goto :goto_9

    .line 148
    :cond_2b
    const/16 v1, 0x20

    if-ne v0, v1, :cond_32

    .line 149
    const-string v0, "net"

    goto :goto_9

    .line 150
    :cond_32
    const/16 v1, 0x200

    if-ne v0, v1, :cond_39

    .line 151
    const-string v0, "ctwap"

    goto :goto_9

    .line 152
    :cond_39
    const/16 v1, 0x100

    if-ne v0, v1, :cond_40

    .line 153
    const-string v0, "ctnet"

    goto :goto_9

    .line 154
    :cond_40
    const/16 v1, 0x800

    if-ne v0, v1, :cond_47

    .line 155
    const-string v0, "3gnet"

    goto :goto_9

    .line 156
    :cond_47
    const/16 v1, 0x400

    if-ne v0, v1, :cond_4e

    .line 157
    const-string v0, "3gwap"

    goto :goto_9

    .line 160
    :cond_4e
    invoke-static {p0}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 162
    :cond_5a
    const-string v0, "none"

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 252
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/open/b/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 254
    if-nez v1, :cond_13

    move-object v0, v6

    .line 274
    :cond_12
    :goto_12
    return-object v0

    .line 257
    :cond_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 259
    if-eqz v1, :cond_21

    .line 260
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_21
    move-object v0, v6

    .line 262
    goto :goto_12

    .line 265
    :cond_23
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v1, :cond_12

    .line 267
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_12

    .line 270
    :catch_33
    move-exception v0

    .line 272
    sget-object v1, Lcom/tencent/open/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApn has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, ""

    goto :goto_12
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 285
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/open/b/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 287
    if-nez v1, :cond_13

    move-object v0, v6

    .line 305
    :cond_12
    :goto_12
    return-object v0

    .line 290
    :cond_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 292
    if-eqz v1, :cond_21

    .line 293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_21
    move-object v0, v6

    .line 295
    goto :goto_12

    .line 297
    :cond_23
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz v1, :cond_12

    .line 299
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_12

    .line 302
    :catch_33
    move-exception v0

    .line 303
    sget-object v1, Lcom/tencent/open/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApnProxy has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, ""

    goto :goto_12
.end method

.method public static d(Landroid/content/Context;)I
    .registers 7

    .prologue
    const/16 v2, 0x200

    const/16 v3, 0x100

    const/16 v1, 0x80

    .line 390
    :try_start_6
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    if-nez v0, :cond_12

    move v0, v1

    .line 438
    :goto_11
    return v0

    .line 395
    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 396
    if-nez v0, :cond_1a

    move v0, v1

    .line 397
    goto :goto_11

    .line 399
    :cond_1a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 401
    const/4 v0, 0x2

    goto :goto_11

    .line 403
    :cond_2c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v4, "cmwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 405
    const/4 v0, 0x1

    goto :goto_11

    .line 406
    :cond_3e
    const-string v4, "cmnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "epc.tmobile.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 408
    :cond_4e
    const/4 v0, 0x4

    goto :goto_11

    .line 409
    :cond_50
    const-string v4, "uniwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 410
    const/16 v0, 0x10

    goto :goto_11

    .line 411
    :cond_5b
    const-string v4, "uninet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 412
    const/16 v0, 0x8

    goto :goto_11

    .line 413
    :cond_66
    const-string v4, "wap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 414
    const/16 v0, 0x40

    goto :goto_11

    .line 415
    :cond_71
    const-string v4, "net"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 416
    const/16 v0, 0x20

    goto :goto_11

    .line 417
    :cond_7c
    const-string v4, "ctwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    move v0, v2

    .line 418
    goto :goto_11

    .line 419
    :cond_86
    const-string v4, "ctnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    move v0, v3

    .line 420
    goto :goto_11

    .line 421
    :cond_90
    const-string v4, "3gwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 422
    const/16 v0, 0x400

    goto/16 :goto_11

    .line 423
    :cond_9c
    const-string v4, "3gnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 424
    const/16 v0, 0x800

    goto/16 :goto_11

    .line 426
    :cond_a8
    const-string v4, "#777"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 427
    invoke-static {p0}, Lcom/tencent/open/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b9} :catch_c2

    move-result v0

    if-lez v0, :cond_bf

    move v0, v2

    .line 429
    goto/16 :goto_11

    :cond_bf
    move v0, v3

    .line 431
    goto/16 :goto_11

    .line 435
    :catch_c2
    move-exception v0

    .line 436
    sget-object v2, Lcom/tencent/open/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMProxyType has exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_df
    move v0, v1

    .line 438
    goto/16 :goto_11
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 447
    if-nez v0, :cond_d

    .line 448
    const-string v0, "MOBILE"

    .line 454
    :goto_c
    return-object v0

    .line 450
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_18

    .line 452
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 454
    :cond_18
    const-string v0, "MOBILE"

    goto :goto_c
.end method
