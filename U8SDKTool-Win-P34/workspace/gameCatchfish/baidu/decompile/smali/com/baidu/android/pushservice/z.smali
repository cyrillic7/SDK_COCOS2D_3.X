.class public final Lcom/baidu/android/pushservice/z;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:I

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:[Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:[Ljava/lang/String;

.field private static n:I

.field private static o:Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "http://api.tuisong.baidu.com"

    sput-object v0, Lcom/baidu/android/pushservice/z;->j:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://api0.tuisong.baidu.com"

    aput-object v1, v0, v4

    const-string v1, "http://api1.tuisong.baidu.com"

    aput-object v1, v0, v3

    const-string v1, "http://api2.tuisong.baidu.com"

    aput-object v1, v0, v5

    const-string v1, "http://api3.tuisong.baidu.com"

    aput-object v1, v0, v6

    const-string v1, "http://api4.tuisong.baidu.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "http://api5.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://api6.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://api7.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://api8.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://api9.tuisong.baidu.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/android/pushservice/z;->k:[Ljava/lang/String;

    const-string v0, "sa.tuisong.baidu.com"

    sput-object v0, Lcom/baidu/android/pushservice/z;->l:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sa0.tuisong.baidu.com"

    aput-object v1, v0, v4

    const-string v1, "sa1.tuisong.baidu.com"

    aput-object v1, v0, v3

    const-string v1, "sa2.tuisong.baidu.com"

    aput-object v1, v0, v5

    const-string v1, "sa3.tuisong.baidu.com"

    aput-object v1, v0, v6

    const-string v1, "sa4.tuisong.baidu.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sa5.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sa6.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sa7.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sa8.tuisong.baidu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sa9.tuisong.baidu.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/android/pushservice/z;->m:[Ljava/lang/String;

    const/16 v0, 0x14a7

    sput v0, Lcom/baidu/android/pushservice/z;->n:I

    const/16 v0, 0x50

    sput v0, Lcom/baidu/android/pushservice/z;->a:I

    const-string v0, "http://m.baidu.com"

    sput-object v0, Lcom/baidu/android/pushservice/z;->o:Ljava/lang/String;

    const-string v0, "http://m.baidu.com"

    sput-object v0, Lcom/baidu/android/pushservice/z;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/android/pushservice/z;->d()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    sget v0, Lcom/baidu/android/pushservice/z;->n:I

    sput v0, Lcom/baidu/android/pushservice/z;->e:I

    sget-object v0, Lcom/baidu/android/pushservice/z;->o:Ljava/lang/String;

    sput-object v0, Lcom/baidu/android/pushservice/z;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/android/pushservice/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/2.0/channel/channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/z;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/searchbox?action=publicsrv&type=issuedcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/z;->h:Ljava/lang/String;

    const-string v0, "http://lbsonline.pushct.baidu.com/lbsupload"

    sput-object v0, Lcom/baidu/android/pushservice/z;->i:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "202.108.23.109"

    aput-object v1, v0, v4

    const-string v1, "180.149.132.103"

    aput-object v1, v0, v3

    const-string v1, "111.13.12.174"

    aput-object v1, v0, v5

    const-string v1, "111.13.12.61"

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/android/pushservice/z;->p:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "202.108.23.105"

    aput-object v1, v0, v4

    const-string v1, "180.149.132.107"

    aput-object v1, v0, v3

    const-string v1, "111.13.12.162"

    aput-object v1, v0, v5

    const-string v1, "180.149.131.209"

    aput-object v1, v0, v6

    const-string v1, "111.13.12.110"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "111.13.100.86"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " 111.13.100.85"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " 61.135.185.18"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "220.181.163.183"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "220.181.163.182"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " 115.239.210.219"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "115.239.210.246"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/android/pushservice/z;->q:[Ljava/lang/String;

    sput-boolean v3, Lcom/baidu/android/pushservice/z;->r:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/z;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/baidu/android/pushservice/z;->r:Z

    if-eqz v0, :cond_19

    :cond_11
    const-string v0, ".baidu.push.sa"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    :cond_19
    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    if-nez p1, :cond_2c

    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2c
    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    sget-object v0, Lcom/baidu/android/pushservice/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/z;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_34

    const-string v2, ".baidu.push.http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/baidu/android/pushservice/z;->p:[Ljava/lang/String;

    array-length v3, v2

    :goto_16
    if-ge v0, v3, :cond_2d

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_20
    sget-object v2, Lcom/baidu/android/pushservice/z;->q:[Ljava/lang/String;

    array-length v3, v2

    :goto_23
    if-ge v0, v3, :cond_2d

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_2d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/android/pushservice/z;->r:Z

    invoke-static {p0}, Lcom/baidu/android/pushservice/z;->a(Landroid/content/Context;)V

    :goto_33
    return-object v1

    :cond_34
    sput-boolean v0, Lcom/baidu/android/pushservice/z;->r:Z

    goto :goto_33
.end method

.method public static a(Landroid/content/Context;)V
    .registers 9

    const-string v0, "pst"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ".baidu.push.dns.refresh"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "PushUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " update last: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_4c

    new-instance v1, Lcom/baidu/android/pushservice/aa;

    invoke-direct {v1, p0, v0}, Lcom/baidu/android/pushservice/aa;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/aa;->start()V

    :cond_4c
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/z;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_d
    const-string v0, ".baidu.push.http"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    :cond_15
    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_39

    if-nez p1, :cond_28

    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_28
    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_39

    sget-object v0, Lcom/baidu/android/pushservice/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_38
    return-object v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "pst"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    array-length v3, v2

    if-lez v3, :cond_2d

    :goto_22
    array-length v3, v2

    if-ge v0, v3, :cond_2d

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2d
    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "http://"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    if-eqz p0, :cond_8a

    if-eqz v5, :cond_8a

    array-length v1, v5

    if-lez v1, :cond_8a

    const-string v1, "pst"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v1, ""

    array-length v7, v5

    move v3, v0

    :goto_28
    if-ge v3, v7, :cond_4c

    aget-object v4, v5, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v4

    goto :goto_28

    :cond_4c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_62

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v2

    :cond_62
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string v2, "PushUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  --- write bck "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8a} :catch_8b

    :cond_8a
    :goto_8a
    return v0

    :catch_8b
    move-exception v1

    goto :goto_8a
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/android/pushservice/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/2.0/channel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "pushservice.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_17
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_97
    .catchall {:try_start_17 .. :try_end_1c} :catchall_cc

    :try_start_1c
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "http_server"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    sput-object v0, Lcom/baidu/android/pushservice/z;->j:Ljava/lang/String;

    :cond_2f
    const-string v0, "socket_server"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3f

    sput-object v0, Lcom/baidu/android/pushservice/z;->l:Ljava/lang/String;

    :cond_3f
    const-string v0, "socket_server_port"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_53

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/android/pushservice/z;->n:I

    :cond_53
    const-string v0, "config_server"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_63

    sput-object v0, Lcom/baidu/android/pushservice/z;->o:Ljava/lang/String;

    :cond_63
    const-string v2, "lightapp_server"

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_73

    sput-object v0, Lcom/baidu/android/pushservice/z;->b:Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_73} :catch_149
    .catchall {:try_start_1c .. :try_end_73} :catchall_147

    :cond_73
    if-eqz v1, :cond_78

    :try_start_75
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    :cond_78
    :goto_78
    return-void

    :catch_79
    move-exception v0

    const-string v1, "PushUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catch_97
    move-exception v0

    move-object v1, v2

    :goto_99
    :try_start_99
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_a8

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_99 .. :try_end_a8} :catchall_147

    :cond_a8
    if-eqz v1, :cond_78

    :try_start_aa
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_78

    :catch_ae
    move-exception v0

    const-string v1, "PushUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :catchall_cc
    move-exception v0

    move-object v1, v2

    :goto_ce
    if-eqz v1, :cond_d3

    :try_start_d0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    :cond_d3
    :goto_d3
    throw v0

    :catch_d4
    move-exception v1

    const-string v2, "PushUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    :cond_f2
    invoke-static {}, Lcom/baidu/android/pushservice/ad;->a()Lcom/baidu/android/pushservice/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/ad;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_78

    :try_start_106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/baidu/android/pushservice/z;->k:[Ljava/lang/String;

    rem-int/lit8 v3, v1, 0xa

    aget-object v2, v2, v3

    sput-object v2, Lcom/baidu/android/pushservice/z;->j:Ljava/lang/String;

    sget-object v2, Lcom/baidu/android/pushservice/z;->m:[Ljava/lang/String;

    rem-int/lit8 v1, v1, 0xa

    aget-object v1, v2, v1

    sput-object v1, Lcom/baidu/android/pushservice/z;->l:Ljava/lang/String;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_124} :catch_126

    goto/16 :goto_78

    :catch_126
    move-exception v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_78

    const-string v1, "PushUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseInt err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    :catchall_147
    move-exception v0

    goto :goto_ce

    :catch_149
    move-exception v0

    goto/16 :goto_99
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/z;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/z;->j:Ljava/lang/String;

    return-object v0
.end method
