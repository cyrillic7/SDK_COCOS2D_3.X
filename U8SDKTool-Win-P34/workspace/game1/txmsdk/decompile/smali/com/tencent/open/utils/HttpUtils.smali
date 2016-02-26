.class public Lcom/tencent/open/utils/HttpUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/HttpUtils$MyX509TrustManager;,
        Lcom/tencent/open/utils/HttpUtils$CustomSSLSocketFactory;,
        Lcom/tencent/open/utils/HttpUtils$NetworkProxy;,
        Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
        Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 155
    const-class v0, Lcom/tencent/open/utils/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/HttpUtils;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 809
    const/4 v0, -0x1

    .line 810
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_19

    .line 811
    if-eqz p0, :cond_14

    .line 812
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    .line 813
    if-gez v0, :cond_13

    .line 814
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 828
    :cond_13
    :goto_13
    return v0

    .line 817
    :cond_14
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    goto :goto_13

    .line 820
    :cond_19
    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 823
    :try_start_25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_28} :catch_2a

    move-result v0

    goto :goto_13

    .line 824
    :catch_2a
    move-exception v1

    goto :goto_13
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 603
    const-string v0, ""

    .line 604
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 606
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 607
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_48

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v5, :cond_48

    .line 612
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 616
    :goto_2d
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 617
    :goto_31
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v5, :cond_3c

    .line 618
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_31

    .line 620
    :cond_3c
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 621
    return-object v0

    :cond_48
    move-object v0, v1

    goto :goto_2d
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 385
    const-string v0, "add_share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "upload_pic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "add_topic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "set_user_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "add_t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "add_pic_t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "add_pic_url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_41

    const-string v0, "add_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_4c

    .line 393
    :cond_41
    const-string v0, "requireApi"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    :cond_4c
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 832
    .line 833
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1c

    .line 834
    if-eqz p0, :cond_17

    .line 835
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 837
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 846
    :cond_16
    :goto_16
    return-object v0

    .line 840
    :cond_17
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 844
    :cond_1c
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 748
    if-nez p0, :cond_5

    .line 749
    const-string v0, ""

    .line 769
    :goto_4
    return-object v0

    .line 751
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    const/4 v0, -0x1

    .line 753
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 754
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    add-int/lit8 v2, v1, 0x1

    .line 756
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 757
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_30

    move v1, v2

    .line 758
    goto :goto_18

    .line 761
    :cond_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_7f

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    move v1, v2

    .line 767
    goto :goto_18

    .line 769
    :cond_81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 696
    if-nez p0, :cond_6

    .line 697
    const-string v0, ""

    .line 736
    :goto_5
    return-object v0

    .line 700
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    const/4 v0, 0x1

    .line 702
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 704
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_2d

    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_15

    .line 708
    :cond_2d
    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_8c

    .line 709
    if-eqz v1, :cond_66

    move v1, v2

    .line 714
    :goto_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 716
    if-eqz v5, :cond_15

    move v0, v2

    .line 719
    :goto_55
    array-length v6, v5

    if-ge v0, v6, :cond_89

    .line 720
    if-nez v0, :cond_6c

    .line 721
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 712
    :cond_66
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 723
    :cond_6c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_89
    move v0, v1

    :goto_8a
    move v1, v0

    .line 735
    goto :goto_15

    .line 727
    :cond_8c
    if-eqz v1, :cond_b7

    move v1, v2

    .line 732
    :goto_8f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_8a

    .line 730
    :cond_b7
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8f

    .line 736
    :cond_bd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method

.method public static getErrorCodeFromException(Ljava/io/IOException;)I
    .registers 2

    .prologue
    .line 398
    instance-of v0, p0, Ljava/io/CharConversionException;

    if-eqz v0, :cond_7

    .line 399
    const/16 v0, -0x14

    .line 475
    :goto_6
    return v0

    .line 400
    :cond_7
    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_e

    .line 401
    const/16 v0, -0x15

    goto :goto_6

    .line 402
    :cond_e
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_15

    .line 403
    const/16 v0, -0x16

    goto :goto_6

    .line 404
    :cond_15
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_1c

    .line 405
    const/16 v0, -0x17

    goto :goto_6

    .line 406
    :cond_1c
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_23

    .line 407
    const/16 v0, -0x18

    goto :goto_6

    .line 408
    :cond_23
    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    if-eqz v0, :cond_2a

    .line 409
    const/16 v0, -0x19

    goto :goto_6

    .line 410
    :cond_2a
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_31

    .line 411
    const/16 v0, -0x1a

    goto :goto_6

    .line 412
    :cond_31
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v0, :cond_38

    .line 413
    const/16 v0, -0x1b

    goto :goto_6

    .line 414
    :cond_38
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_3f

    .line 415
    const/16 v0, -0x1c

    goto :goto_6

    .line 416
    :cond_3f
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_46

    .line 417
    const/16 v0, -0x1d

    goto :goto_6

    .line 418
    :cond_46
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_4c

    .line 419
    const/4 v0, -0x7

    goto :goto_6

    .line 420
    :cond_4c
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_52

    .line 421
    const/4 v0, -0x8

    goto :goto_6

    .line 422
    :cond_52
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v0, :cond_59

    .line 423
    const/16 v0, -0x1e

    goto :goto_6

    .line 424
    :cond_59
    instance-of v0, p0, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v0, :cond_60

    .line 425
    const/16 v0, -0x1f

    goto :goto_6

    .line 426
    :cond_60
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_66

    .line 427
    const/4 v0, -0x3

    goto :goto_6

    .line 428
    :cond_66
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_6d

    .line 429
    const/16 v0, -0x20

    goto :goto_6

    .line 430
    :cond_6d
    instance-of v0, p0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_74

    .line 431
    const/16 v0, -0x21

    goto :goto_6

    .line 432
    :cond_74
    instance-of v0, p0, Ljava/io/InvalidObjectException;

    if-eqz v0, :cond_7b

    .line 433
    const/16 v0, -0x22

    goto :goto_6

    .line 434
    :cond_7b
    instance-of v0, p0, Ljava/io/NotActiveException;

    if-eqz v0, :cond_82

    .line 435
    const/16 v0, -0x23

    goto :goto_6

    .line 436
    :cond_82
    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-eqz v0, :cond_8a

    .line 437
    const/16 v0, -0x24

    goto/16 :goto_6

    .line 438
    :cond_8a
    instance-of v0, p0, Ljava/io/OptionalDataException;

    if-eqz v0, :cond_92

    .line 439
    const/16 v0, -0x25

    goto/16 :goto_6

    .line 440
    :cond_92
    instance-of v0, p0, Ljava/io/StreamCorruptedException;

    if-eqz v0, :cond_9a

    .line 441
    const/16 v0, -0x26

    goto/16 :goto_6

    .line 442
    :cond_9a
    instance-of v0, p0, Ljava/io/WriteAbortedException;

    if-eqz v0, :cond_a2

    .line 443
    const/16 v0, -0x27

    goto/16 :goto_6

    .line 444
    :cond_a2
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_aa

    .line 445
    const/16 v0, -0x28

    goto/16 :goto_6

    .line 446
    :cond_aa
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_b2

    .line 447
    const/16 v0, -0x29

    goto/16 :goto_6

    .line 448
    :cond_b2
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_ba

    .line 449
    const/16 v0, -0x2a

    goto/16 :goto_6

    .line 450
    :cond_ba
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_c2

    .line 451
    const/16 v0, -0x2b

    goto/16 :goto_6

    .line 452
    :cond_c2
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_ca

    .line 453
    const/16 v0, -0x2c

    goto/16 :goto_6

    .line 454
    :cond_ca
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_d2

    .line 455
    const/16 v0, -0x2d

    goto/16 :goto_6

    .line 456
    :cond_d2
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_da

    .line 457
    const/16 v0, -0x2e

    goto/16 :goto_6

    .line 458
    :cond_da
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_e2

    .line 459
    const/16 v0, -0x2f

    goto/16 :goto_6

    .line 460
    :cond_e2
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_ea

    .line 461
    const/16 v0, -0x30

    goto/16 :goto_6

    .line 462
    :cond_ea
    instance-of v0, p0, Ljava/io/SyncFailedException;

    if-eqz v0, :cond_f2

    .line 463
    const/16 v0, -0x31

    goto/16 :goto_6

    .line 464
    :cond_f2
    instance-of v0, p0, Ljava/io/UTFDataFormatException;

    if-eqz v0, :cond_fa

    .line 465
    const/16 v0, -0x32

    goto/16 :goto_6

    .line 466
    :cond_fa
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_102

    .line 467
    const/16 v0, -0x33

    goto/16 :goto_6

    .line 468
    :cond_102
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_10a

    .line 469
    const/16 v0, -0x34

    goto/16 :goto_6

    .line 470
    :cond_10a
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v0, :cond_112

    .line 471
    const/16 v0, -0x35

    goto/16 :goto_6

    .line 472
    :cond_112
    instance-of v0, p0, Ljava/util/zip/ZipException;

    if-eqz v0, :cond_11a

    .line 473
    const/16 v0, -0x36

    goto/16 :goto_6

    .line 475
    :cond_11a
    const/4 v0, -0x2

    goto/16 :goto_6
.end method

.method public static getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v7, 0x1bb

    .line 625
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 626
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v2, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 635
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v2, v4, :cond_d8

    .line 638
    :try_start_1f
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 639
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 640
    new-instance v4, Lcom/tencent/open/utils/HttpUtils$CustomSSLSocketFactory;

    invoke-direct {v4, v2}, Lcom/tencent/open/utils/HttpUtils$CustomSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 641
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 643
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v2, v5, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_c7

    .line 653
    :goto_42
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 656
    if-eqz p0, :cond_eb

    .line 657
    invoke-static {p0, p1}, Lcom/tencent/open/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/OpenConfig;

    move-result-object v1

    move-object v2, v1

    .line 661
    :goto_4e
    if-eqz v2, :cond_e8

    .line 662
    const-string v0, "Common_HttpConnectionTimeout"

    invoke-virtual {v2, v0}, Lcom/tencent/open/utils/OpenConfig;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 663
    const-string v0, "Common_SocketConnectionTimeout"

    invoke-virtual {v2, v0}, Lcom/tencent/open/utils/OpenConfig;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 666
    :goto_5c
    if-nez v1, :cond_60

    const/16 v1, 0x3a98

    .line 667
    :cond_60
    if-nez v0, :cond_64

    const/16 v0, 0x7530

    .line 669
    :cond_64
    invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 670
    invoke-static {v4, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 673
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 674
    const-string v0, "UTF-8"

    invoke-static {v4, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v4, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 681
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v4, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 683
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 686
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->getProxy(Landroid/content/Context;)Lcom/tencent/open/utils/HttpUtils$NetworkProxy;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_c6

    .line 688
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v3, v0, Lcom/tencent/open/utils/HttpUtils$NetworkProxy;->host:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/open/utils/HttpUtils$NetworkProxy;->port:I

    invoke-direct {v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 689
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v3, "http.route.default-proxy"

    invoke-interface {v0, v3, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 692
    :cond_c6
    return-object v1

    .line 644
    :catch_c7
    move-exception v2

    .line 645
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_42

    .line 649
    :cond_d8
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_42

    :cond_e8
    move v1, v0

    goto/16 :goto_5c

    :cond_eb
    move-object v2, v1

    goto/16 :goto_4e
.end method

.method public static getProxy(Landroid/content/Context;)Lcom/tencent/open/utils/HttpUtils$NetworkProxy;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 773
    if-nez p0, :cond_5

    move-object v0, v1

    .line 794
    :goto_4
    return-object v0

    .line 776
    :cond_5
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 778
    if-nez v0, :cond_11

    move-object v0, v1

    .line 779
    goto :goto_4

    .line 781
    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 782
    if-nez v0, :cond_19

    move-object v0, v1

    .line 783
    goto :goto_4

    .line 786
    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 787
    if-nez v0, :cond_35

    .line 788
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;)I

    move-result v3

    .line 790
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    if-ltz v3, :cond_35

    .line 791
    new-instance v0, Lcom/tencent/open/utils/HttpUtils$NetworkProxy;

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/open/utils/HttpUtils$NetworkProxy;-><init>(Ljava/lang/String;ILcom/tencent/open/utils/HttpUtils$1;)V

    goto :goto_4

    :cond_35
    move-object v0, v1

    .line 794
    goto :goto_4
.end method

.method public static openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/Util$Statistic;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 486
    if-eqz p0, :cond_21

    .line 487
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 489
    if-eqz v0, :cond_21

    .line 490
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_21

    .line 493
    :cond_19
    new-instance v0, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;

    const-string v1, "network unavailable"

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_21
    if-eqz p3, :cond_dd

    .line 499
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v0

    .line 503
    :goto_29
    const-string v0, ""

    .line 504
    const-string v0, "appid_for_getting_config"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    const-string v1, "appid_for_getting_config"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 506
    invoke-static {p0, v0, p1}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 507
    const/4 v0, 0x0

    .line 508
    const/4 v4, 0x0

    .line 509
    const-string v1, "GET"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 510
    invoke-static {v2}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v4, v0

    .line 512
    sget-object v0, Lcom/tencent/open/utils/HttpUtils;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->openUrl2 before url ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_e5

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_81
    sget-object v3, Lcom/tencent/open/utils/HttpUtils;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->openUrl2 encodedParam ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 521
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 579
    :goto_c3
    invoke-interface {v6, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 580
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 581
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 583
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_203

    .line 584
    invoke-static {v1}, Lcom/tencent/open/utils/HttpUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 590
    new-instance v2, Lcom/tencent/open/utils/Util$Statistic;

    invoke-direct {v2, v1, v0}, Lcom/tencent/open/utils/Util$Statistic;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 501
    :cond_dd
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    goto/16 :goto_29

    .line 516
    :cond_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 522
    :cond_f9
    const-string v1, "POST"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 523
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 524
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 526
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11a
    :goto_11a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 528
    instance-of v9, v1, [B

    if-eqz v9, :cond_11a

    .line 529
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_11a

    .line 533
    :cond_136
    const-string v0, "method"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_143

    .line 534
    const-string v0, "method"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_143
    const-string v0, "Content-Type"

    const-string v1, "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 541
    const-string v0, "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 542
    const-string v0, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-static {v2, v0}, Lcom/tencent/open/utils/HttpUtils;->encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 547
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 548
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 550
    const-string v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 551
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v3

    :cond_188
    :goto_188
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    add-int/lit8 v1, v1, 0x1

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\"; filename=\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\r\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 557
    const-string v3, "Content-Type: content/unknown\r\n\r\n"

    invoke-static {v3}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 558
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1d8

    .line 560
    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 562
    :cond_1d8
    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_188

    .line 563
    const-string v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_188

    .line 569
    :cond_1e6
    const-string v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 571
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 572
    array-length v0, v1

    add-int/2addr v0, v4

    .line 573
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 574
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 575
    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v1, v5

    .line 576
    goto/16 :goto_c3

    .line 587
    :cond_203
    new-instance v0, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http status code error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21c
    move-object v1, v0

    move v0, v4

    goto/16 :goto_c3
.end method

.method public static request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v4, "openSDK_LOG"

    const-string v5, "OpenApi request"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v5

    const-string v6, "https://openmobile.qq.com/"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v6

    const-string v7, "https://openmobile.qq.com/"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    :goto_51
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V

    .line 210
    const/4 v10, 0x0

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 216
    const/4 v7, 0x0

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/tencent/open/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/OpenConfig;

    move-result-object v6

    const-string v11, "Common_HttpRetryCount"

    invoke-virtual {v6, v11}, Lcom/tencent/open/utils/OpenConfig;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 219
    const-string v11, "OpenConfig_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "config 1:Common_HttpRetryCount            config_value:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   appid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-nez v6, :cond_ff

    const/4 v6, 0x3

    move v13, v6

    .line 223
    :goto_a4
    const-string v6, "OpenConfig_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config 1:Common_HttpRetryCount            result_value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   appid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "     url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v7

    move-wide v6, v8

    move/from16 v8, v18

    move-object v9, v10

    .line 228
    :goto_da
    add-int/lit8 v14, v8, 0x1

    .line 231
    :try_start_dc
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/Util$Statistic;

    move-result-object v10

    .line 233
    iget-object v8, v10, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    .line 234
    invoke-static {v8}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_eb
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_dc .. :try_end_eb} :catch_1b7
    .catch Ljava/net/SocketTimeoutException; {:try_start_dc .. :try_end_eb} :catch_1b1
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_dc .. :try_end_eb} :catch_14b
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_dc .. :try_end_eb} :catch_173
    .catch Ljava/net/MalformedURLException; {:try_start_dc .. :try_end_eb} :catch_178
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_eb} :catch_18a
    .catch Lorg/json/JSONException; {:try_start_dc .. :try_end_eb} :catch_19f

    move-result-object v15

    .line 236
    :try_start_ec
    const-string v8, "ret"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_f1
    .catch Lorg/json/JSONException; {:try_start_ec .. :try_end_f1} :catch_101
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_ec .. :try_end_f1} :catch_104
    .catch Ljava/net/SocketTimeoutException; {:try_start_ec .. :try_end_f1} :catch_12a
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_ec .. :try_end_f1} :catch_14b
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_ec .. :try_end_f1} :catch_173
    .catch Ljava/net/MalformedURLException; {:try_start_ec .. :try_end_f1} :catch_178
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f1} :catch_18a

    move-result v12

    .line 241
    :goto_f2
    :try_start_f2
    iget-wide v8, v10, Lcom/tencent/open/utils/Util$Statistic;->reqSize:J

    .line 242
    iget-wide v10, v10, Lcom/tencent/open/utils/Util$Statistic;->rspSize:J
    :try_end_f6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f2 .. :try_end_f6} :catch_104
    .catch Ljava/net/SocketTimeoutException; {:try_start_f2 .. :try_end_f6} :catch_12a
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_f2 .. :try_end_f6} :catch_14b
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_f2 .. :try_end_f6} :catch_173
    .catch Ljava/net/MalformedURLException; {:try_start_f2 .. :try_end_f6} :catch_178
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f6} :catch_18a
    .catch Lorg/json/JSONException; {:try_start_f2 .. :try_end_f6} :catch_19f

    move-object v13, v15

    .line 316
    :goto_f7
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 317
    return-object v13

    :cond_ff
    move v13, v6

    .line 222
    goto :goto_a4

    .line 237
    :catch_101
    move-exception v8

    .line 239
    const/4 v12, -0x4

    goto :goto_f2

    .line 245
    :catch_104
    move-exception v8

    move-object/from16 v16, v15

    move-object v15, v8

    .line 246
    :goto_108
    invoke-virtual {v15}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 247
    const/4 v12, -0x7

    .line 248
    const-wide/16 v8, 0x0

    .line 249
    const-wide/16 v10, 0x0

    .line 250
    if-ge v14, v13, :cond_122

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-wide/from16 v16, v18

    .line 315
    :goto_11c
    if-lt v14, v13, :cond_1bd

    move-object v13, v8

    move-wide/from16 v8, v16

    goto :goto_f7

    .line 254
    :cond_122
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 255
    throw v15

    .line 257
    :catch_12a
    move-exception v8

    move-object/from16 v16, v15

    move-object v15, v8

    .line 258
    :goto_12e
    invoke-virtual {v15}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 259
    const/4 v12, -0x8

    .line 260
    const-wide/16 v8, 0x0

    .line 261
    const-wide/16 v10, 0x0

    .line 263
    if-ge v14, v13, :cond_143

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-wide/from16 v16, v18

    .line 265
    goto :goto_11c

    .line 267
    :cond_143
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 268
    throw v15

    .line 272
    :catch_14b
    move-exception v4

    move-object v13, v4

    .line 273
    invoke-virtual {v13}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->printStackTrace()V

    .line 274
    invoke-virtual {v13}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 277
    :try_start_154
    const-string v8, "http status code error:"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15f} :catch_16c

    move-result v12

    .line 285
    :goto_160
    const-wide/16 v8, 0x0

    .line 286
    const-wide/16 v10, 0x0

    .line 287
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 288
    throw v13

    .line 280
    :catch_16c
    move-exception v4

    .line 281
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const/16 v12, -0x9

    goto :goto_160

    .line 289
    :catch_173
    move-exception v4

    .line 290
    invoke-virtual {v4}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->printStackTrace()V

    .line 291
    throw v4

    .line 292
    :catch_178
    move-exception v4

    move-object v13, v4

    .line 293
    invoke-virtual {v13}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 294
    const/4 v12, -0x3

    .line 295
    const-wide/16 v8, 0x0

    .line 296
    const-wide/16 v10, 0x0

    .line 297
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 298
    throw v13

    .line 299
    :catch_18a
    move-exception v4

    move-object v13, v4

    .line 300
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    invoke-static {v13}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v12

    .line 303
    const-wide/16 v8, 0x0

    .line 304
    const-wide/16 v10, 0x0

    .line 305
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 306
    throw v13

    .line 307
    :catch_19f
    move-exception v4

    move-object v13, v4

    .line 308
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    .line 309
    const/4 v12, -0x4

    .line 310
    const-wide/16 v8, 0x0

    .line 311
    const-wide/16 v10, 0x0

    .line 312
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 313
    throw v13

    .line 257
    :catch_1b1
    move-exception v8

    move-object v15, v8

    move-object/from16 v16, v9

    goto/16 :goto_12e

    .line 245
    :catch_1b7
    move-exception v8

    move-object v15, v8

    move-object/from16 v16, v9

    goto/16 :goto_108

    :cond_1bd
    move-object v9, v8

    move v8, v14

    goto/16 :goto_da

    :cond_1c1
    move-object/from16 v5, p2

    move-object/from16 v4, p2

    goto/16 :goto_51
.end method

.method public static requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .registers 13

    .prologue
    .line 323
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenApi requestAsync"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/tencent/open/utils/HttpUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/utils/HttpUtils$1;-><init>(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    invoke-virtual {v0}, Lcom/tencent/open/utils/HttpUtils$1;->start()V

    .line 377
    return-void
.end method

.method public static upload(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    .prologue
    .line 868
    .line 870
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b8

    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v5

    const-string v6, "https://openmobile.qq.com/"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object v6

    const-string v7, "https://openmobile.qq.com/"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 880
    :goto_4a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V

    .line 881
    const/4 v10, 0x0

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 887
    const/4 v7, 0x0

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/tencent/open/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/OpenConfig;

    move-result-object v6

    const-string v11, "Common_HttpRetryCount"

    invoke-virtual {v6, v11}, Lcom/tencent/open/utils/OpenConfig;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 890
    const-string v11, "OpenConfig_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "config 1:Common_HttpRetryCount            config_value:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   appid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    if-nez v6, :cond_f6

    const/4 v6, 0x3

    move v13, v6

    .line 894
    :goto_9d
    const-string v6, "OpenConfig_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config 1:Common_HttpRetryCount            result_value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   appid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "     url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v7

    move-wide v6, v8

    move/from16 v8, v18

    move-object v9, v10

    .line 899
    :goto_d3
    add-int/lit8 v14, v8, 0x1

    .line 902
    :try_start_d5
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/tencent/open/utils/Util;->upload(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/Util$Statistic;

    move-result-object v10

    .line 904
    iget-object v8, v10, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    .line 905
    invoke-static {v8}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_e2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d5 .. :try_end_e2} :catch_1ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_d5 .. :try_end_e2} :catch_1a8
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_d5 .. :try_end_e2} :catch_142
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_d5 .. :try_end_e2} :catch_16a
    .catch Ljava/net/MalformedURLException; {:try_start_d5 .. :try_end_e2} :catch_16f
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_e2} :catch_181
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_e2} :catch_196

    move-result-object v15

    .line 907
    :try_start_e3
    const-string v8, "ret"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_e8
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_e8} :catch_f8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e3 .. :try_end_e8} :catch_fb
    .catch Ljava/net/SocketTimeoutException; {:try_start_e3 .. :try_end_e8} :catch_121
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_e3 .. :try_end_e8} :catch_142
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_e3 .. :try_end_e8} :catch_16a
    .catch Ljava/net/MalformedURLException; {:try_start_e3 .. :try_end_e8} :catch_16f
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e8} :catch_181

    move-result v12

    .line 912
    :goto_e9
    :try_start_e9
    iget-wide v8, v10, Lcom/tencent/open/utils/Util$Statistic;->reqSize:J

    .line 913
    iget-wide v10, v10, Lcom/tencent/open/utils/Util$Statistic;->rspSize:J
    :try_end_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e9 .. :try_end_ed} :catch_fb
    .catch Ljava/net/SocketTimeoutException; {:try_start_e9 .. :try_end_ed} :catch_121
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_e9 .. :try_end_ed} :catch_142
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_e9 .. :try_end_ed} :catch_16a
    .catch Ljava/net/MalformedURLException; {:try_start_e9 .. :try_end_ed} :catch_16f
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ed} :catch_181
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_ed} :catch_196

    move-object v13, v15

    .line 987
    :goto_ee
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 988
    return-object v13

    :cond_f6
    move v13, v6

    .line 893
    goto :goto_9d

    .line 908
    :catch_f8
    move-exception v8

    .line 910
    const/4 v12, -0x4

    goto :goto_e9

    .line 916
    :catch_fb
    move-exception v8

    move-object/from16 v16, v15

    move-object v15, v8

    .line 917
    :goto_ff
    invoke-virtual {v15}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 918
    const/4 v12, -0x7

    .line 919
    const-wide/16 v8, 0x0

    .line 920
    const-wide/16 v10, 0x0

    .line 921
    if-ge v14, v13, :cond_119

    .line 922
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-wide/from16 v16, v18

    .line 986
    :goto_113
    if-lt v14, v13, :cond_1b4

    move-object v13, v8

    move-wide/from16 v8, v16

    goto :goto_ee

    .line 925
    :cond_119
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 926
    throw v15

    .line 928
    :catch_121
    move-exception v8

    move-object/from16 v16, v15

    move-object v15, v8

    .line 929
    :goto_125
    invoke-virtual {v15}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 930
    const/4 v12, -0x8

    .line 931
    const-wide/16 v8, 0x0

    .line 932
    const-wide/16 v10, 0x0

    .line 934
    if-ge v14, v13, :cond_13a

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-wide/from16 v16, v18

    .line 936
    goto :goto_113

    .line 938
    :cond_13a
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 939
    throw v15

    .line 943
    :catch_142
    move-exception v4

    move-object v13, v4

    .line 944
    invoke-virtual {v13}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->printStackTrace()V

    .line 945
    invoke-virtual {v13}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 948
    :try_start_14b
    const-string v8, "http status code error:"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 950
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_156} :catch_163

    move-result v12

    .line 956
    :goto_157
    const-wide/16 v8, 0x0

    .line 957
    const-wide/16 v10, 0x0

    .line 958
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 959
    throw v13

    .line 951
    :catch_163
    move-exception v4

    .line 952
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 954
    const/16 v12, -0x9

    goto :goto_157

    .line 960
    :catch_16a
    move-exception v4

    .line 961
    invoke-virtual {v4}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->printStackTrace()V

    .line 962
    throw v4

    .line 963
    :catch_16f
    move-exception v4

    move-object v13, v4

    .line 964
    invoke-virtual {v13}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 965
    const/4 v12, -0x3

    .line 966
    const-wide/16 v8, 0x0

    .line 967
    const-wide/16 v10, 0x0

    .line 968
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 969
    throw v13

    .line 970
    :catch_181
    move-exception v4

    move-object v13, v4

    .line 971
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 973
    invoke-static {v13}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v12

    .line 974
    const-wide/16 v8, 0x0

    .line 975
    const-wide/16 v10, 0x0

    .line 976
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 977
    throw v13

    .line 978
    :catch_196
    move-exception v4

    move-object v13, v4

    .line 979
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    .line 980
    const/4 v12, -0x4

    .line 981
    const-wide/16 v8, 0x0

    .line 982
    const-wide/16 v10, 0x0

    .line 983
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v4

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    .line 984
    throw v13

    .line 928
    :catch_1a8
    move-exception v8

    move-object v15, v8

    move-object/from16 v16, v9

    goto/16 :goto_125

    .line 916
    :catch_1ae
    move-exception v8

    move-object v15, v8

    move-object/from16 v16, v9

    goto/16 :goto_ff

    :cond_1b4
    move-object v9, v8

    move v8, v14

    goto/16 :goto_d3

    :cond_1b8
    move-object/from16 v5, p2

    move-object/from16 v4, p2

    goto/16 :goto_4a
.end method
