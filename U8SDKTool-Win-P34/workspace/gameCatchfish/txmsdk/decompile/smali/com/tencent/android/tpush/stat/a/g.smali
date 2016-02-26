.class public Lcom/tencent/android/tpush/stat/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Random;

.field private static e:Ljava/util/Map;

.field private static volatile f:Landroid/util/DisplayMetrics;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:Lcom/tencent/android/tpush/stat/a/i;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static volatile n:I

.field private static o:Ljava/lang/String;

.field private static p:J

.field private static q:Ljava/lang/String;

.field private static r:I

.field private static s:J

.field private static t:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 67
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    .line 68
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->b:Ljava/lang/String;

    .line 69
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->c:Ljava/lang/String;

    .line 71
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->d:Ljava/util/Random;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->e:Ljava/util/Map;

    .line 261
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->f:Landroid/util/DisplayMetrics;

    .line 319
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->g:Ljava/lang/String;

    .line 364
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->h:Ljava/lang/String;

    .line 445
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    .line 484
    sput v3, Lcom/tencent/android/tpush/stat/a/g;->j:I

    .line 486
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    .line 590
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->l:Ljava/lang/String;

    .line 636
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    .line 695
    sput v3, Lcom/tencent/android/tpush/stat/a/g;->n:I

    .line 718
    sput-object v2, Lcom/tencent/android/tpush/stat/a/g;->o:Ljava/lang/String;

    .line 804
    sput-wide v4, Lcom/tencent/android/tpush/stat/a/g;->p:J

    .line 828
    const-string v0, "__MTA_FIRST_ACTIVATE__"

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->q:Ljava/lang/String;

    .line 830
    sput v3, Lcom/tencent/android/tpush/stat/a/g;->r:I

    .line 855
    sput-wide v4, Lcom/tencent/android/tpush/stat/a/g;->s:J

    .line 872
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/stat/a/g;->t:I

    return-void
.end method

.method public static a()I
    .registers 2

    .prologue
    .line 134
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/g;->f()Ljava/util/Random;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)I
    .registers 3

    .prologue
    .line 875
    if-eqz p1, :cond_8

    .line 876
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/g;->t(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/stat/a/g;->t:I

    .line 878
    :cond_8
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->t:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;
    .registers 16

    .prologue
    .line 552
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 570
    :cond_4
    :goto_4
    return-object p4

    .line 555
    :cond_5
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 556
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 558
    :cond_28
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 559
    array-length v0, v3

    if-ne v0, p3, :cond_4

    .line 561
    const-wide/16 v0, 0x0

    :try_start_31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 562
    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_39
    array-length v2, v3

    if-ge v1, v2, :cond_56

    .line 563
    int-to-long v4, p2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_50} :catch_58

    move-result-object v2

    .line 562
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_39

    :cond_56
    move-object p4, v0

    .line 565
    goto :goto_4

    .line 566
    :catch_58
    move-exception v0

    goto :goto_4
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 632
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 633
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10

    .prologue
    .line 88
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 89
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    :goto_18
    return-object v0

    .line 91
    :cond_19
    if-eqz p0, :cond_69

    .line 92
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_69

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_25

    .line 99
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/b;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_25

    .line 102
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/service/a/c;

    move-result-object v0

    .line 105
    iget-wide v4, v2, Lcom/tencent/android/tpush/data/b;->a:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_25

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/tencent/android/tpush/service/a/c;->a:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->e:Ljava/util/Map;

    iget-wide v2, v2, Lcom/tencent/android/tpush/data/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_18

    .line 116
    :catch_68
    move-exception v0

    .line 119
    :cond_69
    const-string v0, "0"

    goto :goto_18
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 674
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 675
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 676
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    .line 678
    :cond_11
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 682
    :cond_2e
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 167
    if-nez p0, :cond_5

    .line 168
    const-string v0, "0"

    .line 184
    :goto_4
    return-object v0

    .line 171
    :cond_5
    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    const/4 v0, 0x0

    :goto_1c
    array-length v3, v1

    if-ge v0, v3, :cond_36

    .line 176
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    .line 177
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2c

    .line 178
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 181
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_3b

    move-result-object v0

    goto :goto_4

    .line 182
    :catch_3b
    move-exception v0

    .line 184
    const-string v0, "0"

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 194
    if-nez p0, :cond_5

    move-object v0, v1

    .line 228
    :goto_4
    return-object v0

    .line 198
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 199
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    .line 201
    goto :goto_4

    .line 202
    :cond_17
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 204
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 205
    if-nez v0, :cond_27

    move-object v0, v1

    .line 206
    goto :goto_4

    .line 207
    :cond_27
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v0, v1

    .line 209
    goto :goto_4

    .line 210
    :cond_3b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-nez v0, :cond_43

    move-object v0, v1

    .line 212
    goto :goto_4

    .line 213
    :cond_43
    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 215
    :cond_5b
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_64} :catch_65

    goto :goto_4

    .line 225
    :catch_65
    move-exception v0

    .line 226
    sget-object v2, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    :cond_6b
    move-object v0, v1

    .line 228
    goto :goto_4

    .line 216
    :cond_6d
    :try_start_6d
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 217
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_4

    .line 219
    :cond_7f
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6b

    .line 221
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 222
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_98} :catch_65

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 886
    sput p1, Lcom/tencent/android/tpush/stat/a/g;->t:I

    .line 887
    const-string v0, "mta.qq.com.difftime"

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/stat/a/j;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 888
    return-void
.end method

.method public static a([B)[B
    .registers 7

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 147
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 149
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 152
    :goto_16
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_16

    .line 155
    :cond_22
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 157
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 158
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 159
    return-object v2
.end method

.method public static b(Ljava/lang/String;)J
    .registers 7

    .prologue
    .line 580
    const-string v0, "."

    const/16 v1, 0x64

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/android/tpush/stat/a/g;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized b()Lcom/tencent/android/tpush/stat/a/i;
    .registers 3

    .prologue
    .line 494
    const-class v1, Lcom/tencent/android/tpush/stat/a/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    if-nez v0, :cond_16

    .line 495
    new-instance v0, Lcom/tencent/android/tpush/stat/a/i;

    const-string v2, "XgStat"

    invoke-direct {v0, v2}, Lcom/tencent/android/tpush/stat/a/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    .line 496
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/i;->a(Z)V

    .line 498
    :cond_16
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 494
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 238
    const-class v1, Lcom/tencent/android/tpush/stat/a/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 239
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_41

    .line 245
    :goto_15
    monitor-exit v1

    return-object v0

    .line 241
    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    .line 243
    :cond_2d
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/g;->f()Ljava/util/Random;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;

    .line 245
    :cond_3e
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->a:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_41

    goto :goto_15

    .line 238
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 367
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/c;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/android/tpush/service/d/c;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()J
    .registers 6

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 507
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 508
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 509
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 510
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 511
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 512
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_25

    move-result-wide v0

    add-long/2addr v0, v4

    .line 516
    :goto_24
    return-wide v0

    .line 513
    :catch_25
    move-exception v0

    .line 514
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    goto :goto_24
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    const-class v1, Lcom/tencent/android/tpush/stat/a/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 256
    :cond_13
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->b:Ljava/lang/String;

    .line 258
    :cond_19
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->b:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 255
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 584
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 585
    :cond_c
    const/4 v0, 0x0

    .line 587
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 3

    .prologue
    .line 270
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->f:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_20

    .line 271
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->f:Landroid/util/DisplayMetrics;

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    :cond_20
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->f:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/32 v6, 0xf4240

    .line 721
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 722
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->o:Ljava/lang/String;

    .line 734
    :goto_d
    return-object v0

    .line 725
    :cond_e
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/g;->e()J

    move-result-wide v0

    div-long/2addr v0, v6

    .line 727
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 728
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 730
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 731
    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->o:Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->o:Ljava/lang/String;

    goto :goto_d
.end method

.method public static e()J
    .registers 4

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 739
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 741
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 742
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 286
    :try_start_1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/stat/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 289
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 291
    if-eqz v0, :cond_3c

    .line 292
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_3c

    move v0, v1

    .line 294
    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_3c

    .line 295
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 297
    const/4 v0, 0x1

    .line 309
    :goto_38
    return v0

    .line 294
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3c
    move v0, v1

    .line 302
    goto :goto_38

    .line 304
    :cond_3e
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    const-string v2, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/i;->c(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    :goto_45
    move v0, v1

    .line 309
    goto :goto_38

    .line 306
    :catch_47
    move-exception v0

    .line 307
    sget-object v2, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 322
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 323
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->g:Ljava/lang/String;

    .line 341
    :goto_6
    return-object v0

    .line 326
    :cond_7
    :try_start_7
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/stat/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 328
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 329
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 331
    if-eqz v0, :cond_25

    .line 332
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->g:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_30

    .line 341
    :cond_25
    :goto_25
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->g:Ljava/lang/String;

    goto :goto_6

    .line 336
    :cond_28
    :try_start_28
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    const-string v1, "Could not get permission of android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/i;->f(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_25

    .line 338
    :catch_30
    move-exception v0

    .line 339
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method private static declared-synchronized f()Ljava/util/Random;
    .registers 2

    .prologue
    .line 77
    const-class v1, Lcom/tencent/android/tpush/stat/a/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->d:Ljava/util/Random;

    if-nez v0, :cond_e

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->d:Ljava/util/Random;

    .line 80
    :cond_e
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->d:Ljava/util/Random;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static g()J
    .registers 5

    .prologue
    .line 807
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/g;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 808
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/g;->p:J

    .line 825
    :goto_a
    return-wide v0

    .line 810
    :cond_b
    const-string v2, "/proc/meminfo"

    .line 813
    const-wide/16 v0, 0x1

    .line 815
    :try_start_f
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 816
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 818
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 819
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 820
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    .line 821
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_3b

    .line 824
    :goto_36
    sput-wide v0, Lcom/tencent/android/tpush/stat/a/g;->p:J

    .line 825
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/g;->p:J

    goto :goto_a

    .line 822
    :catch_3b
    move-exception v2

    goto :goto_36
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 373
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 393
    const-string v2, ""

    .line 395
    :try_start_2
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/stat/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/stat/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 398
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 400
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 403
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 405
    if-eqz v1, :cond_53

    .line 406
    const-string v3, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 407
    const-string v0, "WIFI"

    .line 430
    :cond_3a
    :goto_3a
    return-object v0

    .line 408
    :cond_3b
    const-string v3, "MOBILE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 409
    if-nez v0, :cond_3a

    .line 413
    const-string v0, "MOBILE"

    goto :goto_3a

    .line 416
    :cond_48
    if-nez v0, :cond_3a

    move-object v0, v1

    .line 419
    goto :goto_3a

    .line 425
    :cond_4c
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    const-string v1, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/i;->f(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_53} :catch_55

    :cond_53
    :goto_53
    move-object v0, v2

    goto :goto_3a

    .line 427
    :catch_55
    move-exception v0

    .line 428
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    goto :goto_53
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 435
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 437
    if-eqz v0, :cond_14

    .line 438
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 442
    :goto_12
    return-object v0

    .line 440
    :catch_13
    move-exception v0

    .line 442
    :cond_14
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 448
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 449
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    .line 462
    :goto_a
    return-object v0

    .line 452
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 454
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    .line 455
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    .line 456
    :cond_28
    const-string v0, "unknown"
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_a

    .line 458
    :catch_2b
    move-exception v0

    .line 459
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    .line 462
    :cond_31
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->i:Ljava/lang/String;

    goto :goto_a
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 593
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/a/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 594
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->l:Ljava/lang/String;

    .line 622
    :cond_b
    :goto_b
    return-object v0

    .line 597
    :cond_c
    :try_start_c
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/tencent/android/tpush/stat/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 599
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 600
    if-eqz v1, :cond_b

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 601
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 603
    if-eqz v1, :cond_b

    .line 605
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 608
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/android/tpush/stat/a/g;->l:Ljava/lang/String;

    .line 612
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->l:Ljava/lang/String;

    goto :goto_b

    .line 616
    :cond_73
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    const-string v2, "can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/a/i;->c(Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_7a} :catch_7b

    goto :goto_b

    .line 619
    :catch_7b
    move-exception v1

    .line 620
    sget-object v2, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 646
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 647
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    .line 661
    :goto_6
    return-object v0

    .line 649
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 650
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 652
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 654
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1b

    .line 655
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_32

    .line 661
    :cond_2f
    :goto_2f
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->m:Ljava/lang/String;

    goto :goto_6

    .line 659
    :catch_32
    move-exception v0

    goto :goto_2f
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    sget-object v0, Lcom/tencent/android/tpush/stat/a/h;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized n(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 698
    const-class v2, Lcom/tencent/android/tpush/stat/a/g;

    monitor-enter v2

    :try_start_4
    sget v1, Lcom/tencent/android/tpush/stat/a/g;->n:I

    if-lez v1, :cond_36

    .line 699
    sget v1, Lcom/tencent/android/tpush/stat/a/g;->n:I

    rem-int/lit16 v1, v1, 0x3e8
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_33

    if-nez v1, :cond_1e

    .line 701
    :try_start_e
    sget v1, Lcom/tencent/android/tpush/stat/a/g;->n:I

    add-int/lit16 v1, v1, 0x3e8

    .line 702
    sget v3, Lcom/tencent/android/tpush/stat/a/g;->n:I

    const v4, 0x7ffe795f

    if-lt v3, v4, :cond_49

    .line 705
    :goto_19
    const-string v1, "MTA_EVENT_INDEX"

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/stat/a/j;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1e} :catch_2c
    .catchall {:try_start_e .. :try_end_1e} :catchall_33

    .line 714
    :cond_1e
    :goto_1e
    :try_start_1e
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/stat/a/g;->n:I

    .line 715
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_33

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 706
    :catch_2c
    move-exception v0

    .line 707
    :try_start_2d
    sget-object v1, Lcom/tencent/android/tpush/stat/a/g;->k:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->d(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_1e

    .line 698
    :catchall_33
    move-exception v0

    monitor-exit v2

    throw v0

    .line 711
    :cond_36
    :try_start_36
    const-string v0, "MTA_EVENT_INDEX"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/stat/a/j;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/stat/a/g;->n:I

    .line 712
    const-string v0, "MTA_EVENT_INDEX"

    sget v1, Lcom/tencent/android/tpush/stat/a/g;->n:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/stat/a/j;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_33

    goto :goto_1e

    :cond_49
    move v0, v1

    goto :goto_19
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 784
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/g;->u(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 785
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/g;->g()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 786
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    .line 791
    :goto_2f
    return-object v0

    .line 788
    :catch_30
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 791
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static declared-synchronized p(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 839
    const-class v1, Lcom/tencent/android/tpush/stat/a/g;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    .line 840
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->r:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    .line 843
    :goto_a
    monitor-exit v1

    return v0

    .line 842
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/g;->q(Landroid/content/Context;)V

    .line 843
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->r:I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    .line 839
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static q(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 847
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->q:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/stat/a/j;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/stat/a/g;->r:I

    .line 849
    sget v0, Lcom/tencent/android/tpush/stat/a/g;->r:I

    if-ne v0, v1, :cond_13

    .line 850
    sget-object v0, Lcom/tencent/android/tpush/stat/a/g;->q:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/stat/a/j;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 852
    :cond_13
    return-void
.end method

.method public static r(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 858
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/g;->s:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 859
    const-string v0, "mta.qq.com.checktime"

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/stat/a/j;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/stat/a/g;->s:J

    .line 861
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/android/tpush/stat/a/g;->s:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 862
    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static s(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/stat/a/g;->s:J

    .line 867
    const-string v0, "mta.qq.com.checktime"

    sget-wide v2, Lcom/tencent/android/tpush/stat/a/g;->s:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/stat/a/j;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 868
    return-void
.end method

.method public static t(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 882
    const-string v0, "mta.qq.com.difftime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/stat/a/j;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static u(Landroid/content/Context;)J
    .registers 3

    .prologue
    .line 796
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 798
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 799
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 801
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method
