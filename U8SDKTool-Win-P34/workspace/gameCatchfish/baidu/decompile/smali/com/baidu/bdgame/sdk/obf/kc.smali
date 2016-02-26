.class public Lcom/baidu/bdgame/sdk/obf/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field private static final j:Ljava/lang/String; = "utf-8"

.field private static final k:I = 0x40

.field private static final l:I = 0x20


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private g:S

.field private h:I

.field private i:I

.field private m:Lcom/baidu/bdgame/sdk/obf/kd;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-short v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:S

    .line 50
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:I

    .line 51
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    .line 73
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    .line 76
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/kd;->e()I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:I

    .line 77
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 439
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private a(I[BII)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    const/4 v0, 0x0

    .line 342
    packed-switch p1, :pswitch_data_28

    .line 365
    :cond_5
    :goto_5
    return-object v0

    .line 344
    :pswitch_6
    new-array v0, p4, [B

    .line 345
    invoke-static {p2, p3, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 349
    :pswitch_c
    invoke-static {p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->a([BII)[B

    move-result-object v0

    goto :goto_5

    .line 353
    :pswitch_11
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->b()[B

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->a([B[BII)[B

    move-result-object v0

    goto :goto_5

    .line 357
    :pswitch_1a
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->a(I[BII)[B

    move-result-object v0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    const/4 v1, 0x1

    array-length v2, v0

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(I[BII)[B

    move-result-object v0

    goto :goto_5

    .line 342
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_11
        :pswitch_1a
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 572
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    if-nez v1, :cond_b

    .line 581
    :goto_a
    return-object v0

    .line 574
    :cond_b
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 575
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_a

    .line 576
    :cond_15
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 577
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->b()[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a([B[B)[B

    move-result-object v0

    goto :goto_a

    .line 578
    :cond_29
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 579
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->b()[B

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a([B[B)[B

    move-result-object v0

    goto :goto_a

    .line 581
    :cond_3b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a([BII)[B
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 369
    .line 372
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 373
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_47
    .catchall {:try_start_1 .. :try_end_10} :catchall_3b

    .line 374
    const/16 v0, 0x400

    :try_start_12
    new-array v0, v0, [B

    .line 376
    :goto_14
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 377
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_44

    goto :goto_14

    .line 381
    :catch_20
    move-exception v0

    move-object v0, v2

    .line 384
    :goto_22
    if-eqz v0, :cond_4a

    .line 386
    :try_start_24
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_38

    move-object v0, v1

    .line 392
    :cond_28
    :goto_28
    return-object v0

    .line 379
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 380
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_20
    .catchall {:try_start_29 .. :try_end_30} :catchall_44

    .line 384
    if-eqz v2, :cond_28

    .line 386
    :try_start_32
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_28

    .line 387
    :catch_36
    move-exception v1

    goto :goto_28

    :catch_38
    move-exception v0

    move-object v0, v1

    .line 388
    goto :goto_28

    .line 384
    :catchall_3b
    move-exception v0

    :goto_3c
    if-eqz v1, :cond_41

    .line 386
    :try_start_3e
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 388
    :cond_41
    :goto_41
    throw v0

    .line 387
    :catch_42
    move-exception v1

    goto :goto_41

    .line 384
    :catchall_44
    move-exception v0

    move-object v1, v2

    goto :goto_3c

    .line 381
    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_22

    :cond_4a
    move-object v0, v1

    goto :goto_28
.end method

.method private a([BLjava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 543
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 567
    :goto_7
    return-object p1

    .line 547
    :cond_8
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 551
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 552
    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 554
    const/16 v2, 0x25

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 555
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 556
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x4

    if-lt v3, v4, :cond_4c

    .line 557
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 558
    const/16 v2, 0x26

    const/4 v3, 0x4

    invoke-static {v0, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    array-length v0, p1

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 565
    array-length v2, p1

    invoke-static {p1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 567
    goto :goto_7

    .line 560
    :cond_4c
    const/4 p1, 0x0

    goto :goto_7
.end method

.method private static a([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 585
    if-nez p0, :cond_a

    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_a
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/kl;-><init>([B)V

    .line 589
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kl;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([B[BII)[B
    .registers 6

    .prologue
    .line 396
    if-nez p0, :cond_a

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_a
    new-array v0, p3, [B

    .line 401
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/kl;-><init>([B)V

    .line 405
    :try_start_15
    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/kl;->b([B)[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 410
    :goto_19
    return-object v0

    .line 406
    :catch_1a
    move-exception v0

    .line 408
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 443
    const-string v0, "Platform"

    const-string v3, "2"

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 444
    const-string v0, "SDKVersion"

    const-string v3, "3.5.2"

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 445
    const-string v0, "FWVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 446
    const-string v0, "PhoneType"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 449
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 450
    const-string v3, "Resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 451
    const-string v3, "Network"

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_97

    move v0, v1

    :goto_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 452
    const-string v0, "Jailbreak"

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kc;->l()Z

    move-result v3

    if-eqz v3, :cond_63

    move v2, v1

    :cond_63
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 453
    const-string v0, "ChannelID"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 455
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v0, v2, :cond_84

    .line 456
    const-string v0, "Debug"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 459
    :cond_84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lb;->a(Landroid/content/Context;)I

    move-result v0

    .line 460
    const/4 v1, -0x1

    if-eq v0, v1, :cond_96

    .line 461
    const-string v1, "SDKType"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 463
    :cond_96
    return-void

    :cond_97
    move v0, v2

    .line 451
    goto :goto_53
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 479
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 480
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 485
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 594
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 595
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 596
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 597
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 598
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 599
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 600
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 604
    :goto_1d
    return-object v0

    .line 601
    :catch_1e
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 604
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private b([B)[B
    .registers 5

    .prologue
    .line 218
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->e([B)I

    move-result v0

    .line 222
    const/16 v1, 0x20

    :try_start_6
    array-length v2, p1

    add-int/lit8 v2, v2, -0x20

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(I[BII)[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_e

    move-result-object v0

    .line 227
    :goto_d
    return-object v0

    .line 223
    :catch_e
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c([B)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 232
    :try_start_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    new-array v1, v1, [B

    .line 233
    const/16 v2, 0x20

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-nez v1, :cond_14

    .line 255
    :cond_13
    :goto_13
    return v0

    .line 240
    :cond_14
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    .line 242
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_13

    .line 245
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x8

    const/4 v4, 0x4

    const-string v5, "utf-8"

    invoke-direct {v2, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_37

    move-result v1

    if-eqz v1, :cond_13

    .line 249
    const/4 v0, 0x1

    goto :goto_13

    .line 251
    :catch_37
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private final c()[B
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kd;->f()Lcom/baidu/bdgame/sdk/obf/kf;

    move-result-object v0

    .line 97
    if-nez v0, :cond_a

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kf;->a()[B

    move-result-object v0

    goto :goto_9
.end method

.method private d([B)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 260
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a([BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 265
    :goto_8
    return-object v0

    .line 261
    :catch_9
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static e([B)I
    .registers 2

    .prologue
    .line 414
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method private static f([B)I
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 418
    new-array v0, v3, [B

    .line 419
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/km;->c([B)I

    move-result v0

    return v0
.end method

.method private static l()Z
    .registers 1

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcom/baidu/platformsdk/jni/RootUtil;->nativeIsRoot()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 475
    :goto_4
    return v0

    .line 472
    :catch_5
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private m()[B
    .registers 7

    .prologue
    const/16 v2, 0x20

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 489
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 490
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 494
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->c()[B

    move-result-object v1

    .line 495
    if-eqz v1, :cond_15

    .line 497
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_15
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/km;->a(S)[B

    move-result-object v1

    .line 504
    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    if-eq v1, v3, :cond_28

    .line 510
    const/16 v1, 0x22

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 519
    :cond_28
    iget-short v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:S

    if-eq v1, v3, :cond_37

    .line 520
    iget-short v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:S

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/km;->a(S)[B

    move-result-object v1

    .line 521
    const/16 v2, 0x23

    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    :cond_37
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:I

    if-eq v1, v3, :cond_47

    .line 531
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:I

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/km;->a(I)[B

    move-result-object v1

    .line 532
    const/16 v2, 0x2a

    const/4 v3, 0x4

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    :cond_47
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->e()Landroid/content/Context;

    move-result-object v0

    .line 651
    const-string v1, "bdp_request_net_error"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 140
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->n:I

    .line 141
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->o:Ljava/lang/String;

    .line 142
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method final a(Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->n:I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->p:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 126
    if-eqz p1, :cond_14

    .line 127
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->n:I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->p:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_14
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->n:I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->p:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 133
    :goto_1d
    return-void

    .line 130
    :catch_1e
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method final a(Ljava/net/HttpURLConnection;)V
    .registers 2

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Ljava/net/HttpURLConnection;)V

    .line 436
    return-void
.end method

.method protected final a(S)V
    .registers 2

    .prologue
    .line 185
    iput-short p1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:S

    .line 186
    return-void
.end method

.method final a([B)V
    .registers 8

    .prologue
    const/16 v2, 0x20

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 270
    array-length v0, p1

    if-ge v0, v2, :cond_11

    .line 272
    const-string v0, "receive size error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 338
    :cond_10
    :goto_10
    return-void

    .line 276
    :cond_11
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->f([B)I

    move-result v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->c(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 278
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v1

    .line 279
    iget-object v0, v1, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 283
    :cond_35
    array-length v0, p1

    if-eq v0, v2, :cond_10

    .line 288
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->c([B)Z

    move-result v0

    if-nez v0, :cond_48

    .line 290
    const-string v0, "checksum error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 294
    :cond_48
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kc;->b([B)[B

    move-result-object v0

    .line 295
    if-nez v0, :cond_58

    .line 297
    const-string v0, "decrypt error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 301
    :cond_58
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->d([B)Lorg/json/JSONObject;

    move-result-object v1

    .line 302
    if-nez v1, :cond_68

    .line 304
    const-string v0, "json error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 307
    :cond_68
    const-string v0, "ResultCode"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 310
    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 316
    :cond_7e
    :try_start_7e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_81} :catch_a3

    move-result v2

    .line 323
    const-string v0, "Result"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v2, :cond_8d

    .line 325
    invoke-virtual {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 329
    :cond_8d
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-direct {v3, v4, v4}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 332
    iget-object v0, v3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 317
    :catch_a3
    move-exception v0

    .line 319
    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 335
    :cond_af
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 336
    :goto_b5
    iget-object v1, v3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 335
    :cond_bc
    iget-object v0, v3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_b5
.end method

.method protected final b(I)V
    .registers 4

    .prologue
    .line 168
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:I

    .line 169
    packed-switch p1, :pswitch_data_e

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown et."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_d
    return-void

    .line 169
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected b(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method final b(Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "request cancel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected b()[B
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kd;->f()Lcom/baidu/bdgame/sdk/obf/kf;

    move-result-object v0

    .line 105
    if-nez v0, :cond_a

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kf;->b()[B

    move-result-object v0

    goto :goto_9
.end method

.method final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 631
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->n:I

    .line 146
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->o:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kc;->p:Ljava/lang/Object;

    .line 148
    return-void
.end method

.method protected final c(I)Z
    .registers 5

    .prologue
    .line 656
    sparse-switch p1, :sswitch_data_30

    .line 674
    :goto_3
    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    :goto_6
    return v0

    .line 658
    :sswitch_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    const-string v2, "session invalid 2"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kd;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->b(Landroid/content/Context;I)V

    goto :goto_3

    .line 665
    :sswitch_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    const-string v2, "accesstoken invalid 18"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kd;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->c(Landroid/content/Context;I)V

    goto :goto_3

    .line 674
    :cond_2d
    const/4 v0, 0x0

    goto :goto_6

    .line 656
    nop

    :sswitch_data_30
    .sparse-switch
        0x2 -> :sswitch_7
        0x12 -> :sswitch_1a
    .end sparse-switch
.end method

.method final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->a()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 86
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->a:Ljava/lang/String;

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 635
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "absent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Landroid/content/Context;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 639
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "format"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Lcom/baidu/bdgame/sdk/obf/kd;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->m:Lcom/baidu/bdgame/sdk/obf/kd;

    return-object v0
.end method

.method protected final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 643
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "illegal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->n:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->p:Ljava/lang/Object;

    return-object v0
.end method

.method j()S
    .registers 2

    .prologue
    .line 189
    iget-short v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:S

    return v0
.end method

.method final k()[B
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 609
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->m()[B

    move-result-object v2

    .line 611
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->f()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_1d

    .line 614
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    :goto_13
    invoke-direct {p0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a([BLjava/lang/String;)[B
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    .line 626
    :goto_17
    return-object v0

    .line 621
    :catch_18
    move-exception v1

    .line 623
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    :cond_1d
    move-object v1, v0

    goto :goto_13
.end method
