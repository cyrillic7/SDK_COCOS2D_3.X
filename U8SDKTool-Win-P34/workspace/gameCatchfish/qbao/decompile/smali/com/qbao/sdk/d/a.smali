.class public Lcom/qbao/sdk/d/a;
.super Ljava/lang/Object;
.source "CacheImage.java"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "game_cache"

.field private static final TAG:Ljava/lang/String; = "CacheImage"

.field public static final fh:Ljava/lang/String; = "QbaoPay.Sdk.Res"

.field private static final fi:Ljava/lang/String; = ".zip"

.field private static final fj:Ljava/lang/String; = "/Download/data/com.qbao.sdk/"

.field private static fm:Lcom/qbao/sdk/d/a;

.field public static fn:Ljava/lang/String;

.field public static fo:Ljava/lang/String;


# instance fields
.field private fk:Ljava/io/File;

.field private fl:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    const-string v0, "00000000"

    sput-object v0, Lcom/qbao/sdk/d/a;->fn:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QbaoPay.Sdk.Res_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/d/a;->fn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qbao/sdk/d/a;->fo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    :try_start_3
    sput-object p0, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    .line 156
    if-eqz p1, :cond_1a

    .line 157
    const-string v0, "game_cache"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    .line 158
    const-string v0, "QbaoPay.Sdk.Res"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    .line 159
    invoke-static {p1}, Lcom/qbao/sdk/d/a;->t(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1b

    .line 164
    :cond_1a
    :goto_1a
    return-void

    .line 161
    :catch_1b
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 268
    const-string v0, "CacheImage"

    const-string v1, "findSdkRes...."

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 287
    :cond_12
    :goto_12
    return-object v2

    .line 272
    :cond_13
    const-string v0, "CacheImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "findSdkRes from"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 274
    if-eqz v4, :cond_12

    array-length v0, v4

    if-eqz v0, :cond_12

    .line 277
    const-string v0, "CacheImage"

    const-string v1, "findSdkRes CONTEXT,FILES...."

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v1, Lcom/qbao/sdk/d/a;->fo:Ljava/lang/String;

    .line 280
    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_41
    if-lt v3, v5, :cond_58

    .line 286
    const-string v0, "CacheImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "findSdkRes CONTEXT,FILES,NEWEST="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 280
    :cond_58
    aget-object v1, v4, v3

    .line 281
    invoke-static {v1, v0}, Lcom/qbao/sdk/d/a;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_64
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_41

    :cond_69
    move-object v1, v2

    goto :goto_64
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 298
    const-string v2, "CacheImage"

    const-string v3, "isNewRes...."

    invoke-static {v2, v3}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-nez p0, :cond_c

    .line 326
    :cond_b
    :goto_b
    return v0

    .line 302
    :cond_c
    const-string v2, "CacheImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNewRes...."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/d/a;->ah(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p1}, Lcom/qbao/sdk/d/a;->ah(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 308
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 309
    const-string v3, ".zip"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 311
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 313
    aget-object v2, v2, v1

    .line 314
    aget-object v3, v3, v1

    .line 315
    const-string v4, "CacheImage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isNewRes....v1="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 318
    if-gtz v2, :cond_a4

    .line 320
    if-gez v2, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 321
    const-string v2, "CacheImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file res "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been deleted, LOW VER..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 325
    :cond_a4
    const-string v0, "CacheImage"

    const-string v2, "isNewRes v1>v2...."

    invoke-static {v0, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 326
    goto/16 :goto_b
.end method

.method public static af(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 50
    const-string v0, "CacheImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release res file="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 75
    :cond_1b
    :goto_1b
    return-void

    .line 54
    :cond_1c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 58
    const-string v1, "CacheImage"

    const-string v2, "release res file is exists"

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1b

    .line 63
    const-string v2, "QbaoPay.Sdk.Res"

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 67
    :try_start_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "QbaoPay.Sdk.Res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v2, "CacheImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "release res file to="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v1, v0}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_81} :catch_82
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_81} :catch_87

    goto :goto_1b

    .line 70
    :catch_82
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 72
    :catch_87
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public static ag(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    :goto_7
    return-void

    .line 189
    :cond_8
    sput-object p0, Lcom/qbao/sdk/d/a;->fo:Ljava/lang/String;

    .line 191
    const-string v0, ".zip"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    aget-object v0, v0, v3

    sput-object v0, Lcom/qbao/sdk/d/a;->fn:Ljava/lang/String;

    .line 194
    const-string v0, "CacheImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "default res="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/qbao/sdk/d/a;->fo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method private static ah(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 353
    const-string v2, "CacheImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkResFileName...."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 376
    :cond_1c
    :goto_1c
    return v0

    .line 357
    :cond_1d
    const-string v2, "QbaoPay.Sdk.Res"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, ".zip"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 360
    const-string v2, ".zip"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 361
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_1c

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1c

    .line 367
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "QbaoPay.Sdk.Res"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 372
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1c

    .line 375
    const-string v0, "CacheImage"

    const-string v2, "checkResFileName Y contains SDK_RES, LEN, NAME, VER...."

    invoke-static {v0, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 376
    goto :goto_1c
.end method

.method public static ba()Ljava/io/FileDescriptor;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 126
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 150
    :cond_12
    :goto_12
    return-object v0

    .line 129
    :cond_13
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_12

    move v3, v2

    .line 133
    :goto_29
    :try_start_29
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ge v3, v1, :cond_12

    .line 134
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    aget-object v4, v1, v3

    move v1, v2

    .line 135
    :goto_3f
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lt v1, v5, :cond_4a

    .line 133
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_29

    .line 136
    :cond_4a
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v1

    .line 137
    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "opening_sound"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 138
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_66} :catch_6b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_66} :catch_70

    move-result-object v0

    goto :goto_12

    .line 135
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 143
    :catch_6b
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_12

    .line 146
    :catch_70
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method private static bb()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 342
    :goto_d
    return-object v0

    .line 334
    :cond_e
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 335
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Download/data/com.qbao.sdk/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_37} :catch_39

    :cond_37
    move-object v0, v1

    .line 339
    goto :goto_d

    .line 340
    :catch_39
    move-exception v1

    .line 341
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 81
    :try_start_4
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    if-nez v1, :cond_f

    .line 82
    new-instance v1, Lcom/qbao/sdk/d/a;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/d/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    .line 84
    :cond_f
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_ca
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1c} :catch_e7
    .catchall {:try_start_4 .. :try_end_1c} :catchall_104

    move-result v1

    if-nez v1, :cond_34

    .line 108
    :cond_1f
    if-eqz v0, :cond_24

    .line 109
    :try_start_21
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_2a

    .line 115
    :cond_24
    :goto_24
    if-eqz v0, :cond_29

    .line 116
    :try_start_26
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2f

    .line 122
    :cond_29
    :goto_29
    return-object v0

    .line 111
    :catch_2a
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 118
    :catch_2f
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 87
    :cond_34
    :try_start_34
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_47} :catch_ca
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_47} :catch_e7
    .catchall {:try_start_34 .. :try_end_47} :catchall_104

    if-nez v1, :cond_5e

    .line 108
    :cond_49
    if-eqz v0, :cond_4e

    .line 109
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_59

    .line 115
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_29

    .line 116
    :try_start_50
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_29

    .line 118
    :catch_54
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 111
    :catch_59
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    :cond_5e
    move v3, v2

    .line 90
    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_68} :catch_ca
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_68} :catch_e7
    .catchall {:try_start_5f .. :try_end_68} :catchall_104

    if-lt v3, v1, :cond_7a

    .line 108
    if-eqz v0, :cond_6f

    .line 109
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_11d

    .line 115
    :cond_6f
    :goto_6f
    if-eqz v0, :cond_29

    .line 116
    :try_start_71
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_29

    .line 118
    :catch_75
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 91
    :cond_7a
    :try_start_7a
    sget-object v1, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    iget-object v1, v1, Lcom/qbao/sdk/d/a;->fl:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    aget-object v6, v1, v3

    move v1, v2

    .line 92
    :goto_85
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v7, v7

    if-lt v1, v7, :cond_90

    .line 90
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5f

    .line 93
    :cond_90
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v1

    .line 94
    if-eqz v7, :cond_c7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 95
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_a7} :catch_ca
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_a7} :catch_e7
    .catchall {:try_start_7a .. :try_end_a7} :catchall_104

    .line 96
    :try_start_a7
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_ac} :catch_12e
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_ac} :catch_129
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_123

    .line 97
    :try_start_ac
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_af
    .catch Ljava/io/FileNotFoundException; {:try_start_ac .. :try_end_af} :catch_131
    .catch Ljava/lang/NullPointerException; {:try_start_ac .. :try_end_af} :catch_12c
    .catchall {:try_start_ac .. :try_end_af} :catchall_127

    move-result-object v0

    .line 108
    if-eqz v3, :cond_b5

    .line 109
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_c2

    .line 115
    :cond_b5
    :goto_b5
    if-eqz v2, :cond_29

    .line 116
    :try_start_b7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bc

    goto/16 :goto_29

    .line 118
    :catch_bc
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 111
    :catch_c2
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b5

    .line 92
    :cond_c7
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 102
    :catch_ca
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 103
    :goto_cd
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_127

    .line 108
    if-eqz v3, :cond_d5

    .line 109
    :try_start_d2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_e2

    .line 115
    :cond_d5
    :goto_d5
    if-eqz v2, :cond_29

    .line 116
    :try_start_d7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_dc

    goto/16 :goto_29

    .line 118
    :catch_dc
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 111
    :catch_e2
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d5

    .line 104
    :catch_e7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 105
    :goto_ea
    :try_start_ea
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_127

    .line 108
    if-eqz v3, :cond_f2

    .line 109
    :try_start_ef
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_ff

    .line 115
    :cond_f2
    :goto_f2
    if-eqz v2, :cond_29

    .line 116
    :try_start_f4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f9

    goto/16 :goto_29

    .line 118
    :catch_f9
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 111
    :catch_ff
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f2

    .line 106
    :catchall_104
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 108
    :goto_108
    if-eqz v3, :cond_10d

    .line 109
    :try_start_10a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_113

    .line 115
    :cond_10d
    :goto_10d
    if-eqz v2, :cond_112

    .line 116
    :try_start_10f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_118

    .line 121
    :cond_112
    :goto_112
    throw v0

    .line 111
    :catch_113
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10d

    .line 118
    :catch_118
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_112

    .line 111
    :catch_11d
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6f

    .line 106
    :catchall_123
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_108

    :catchall_127
    move-exception v0

    goto :goto_108

    .line 104
    :catch_129
    move-exception v1

    move-object v3, v0

    goto :goto_ea

    :catch_12c
    move-exception v1

    goto :goto_ea

    .line 102
    :catch_12e
    move-exception v1

    move-object v3, v0

    goto :goto_cd

    :catch_131
    move-exception v1

    goto :goto_cd
.end method

.method public static release()V
    .registers 2

    .prologue
    .line 453
    :try_start_0
    sget-object v0, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    if-eqz v0, :cond_7

    .line 454
    const/4 v0, 0x0

    sput-object v0, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;

    .line 456
    :cond_7
    const-string v0, "00000000"

    sput-object v0, Lcom/qbao/sdk/d/a;->fn:Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QbaoPay.Sdk.Res_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/d/a;->fn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qbao/sdk/d/a;->fo:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 461
    :goto_24
    return-void

    .line 458
    :catch_25
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public static t(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qbao/sdk/d/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 172
    if-nez v0, :cond_25

    .line 173
    invoke-static {p0}, Lcom/qbao/sdk/d/a;->u(Landroid/content/Context;)V

    .line 174
    const-string v0, "CacheImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "default res f null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/qbao/sdk/d/a;->fo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    :goto_24
    return-void

    .line 177
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/sdk/d/a;->ag(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_32

    goto :goto_24

    .line 178
    :catch_2d
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_24

    .line 180
    :catch_32
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public static u(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 203
    const-string v1, "CacheImage"

    const-string v2, "loadNewestRes---------"

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 210
    if-nez v2, :cond_27

    .line 211
    const-string v0, "CacheImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No available memory to load this app:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_26
    :goto_26
    return-void

    .line 215
    :cond_27
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {}, Lcom/qbao/sdk/d/a;->bb()Ljava/io/File;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_f0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 220
    const-string v4, "CacheImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p0, v1}, Lcom/qbao/sdk/d/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 227
    :goto_57
    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 228
    const-string v0, "CacheImage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exist newest SDK_RES in sd card:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a3

    .line 231
    const-string v4, "CacheImage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Copy res file from sd card to:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {v1, v0}, Lcom/qbao/sdk/e/h;->a(Ljava/io/File;Ljava/io/File;)V

    .line 236
    :cond_a3
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c5

    :cond_ab
    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 237
    :cond_b3
    invoke-static {p0}, Lcom/qbao/sdk/d/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c5

    .line 239
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {p0, v1, v4}, Lcom/qbao/sdk/e/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 244
    :cond_c5
    if-nez v0, :cond_d2

    .line 245
    const-string v0, "CacheImage"

    const-string v1, "No SDK_RES file in SD card, then try find it from /data/data/ directory."

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p0, v2}, Lcom/qbao/sdk/d/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 249
    :cond_d2
    if-eqz v0, :cond_26

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/sdk/d/a;->af(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/qbao/sdk/d/a;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qbao/sdk/d/a;->fm:Lcom/qbao/sdk/d/a;
    :try_end_e2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_e2} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e2} :catch_ea

    goto/16 :goto_26

    .line 253
    :catch_e4
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_26

    .line 255
    :catch_ea
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_26

    :cond_f0
    move-object v1, v0

    goto/16 :goto_57
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 433
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 434
    const-string v2, "qbao"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 435
    if-eqz v3, :cond_10

    array-length v0, v3

    if-nez v0, :cond_12

    :cond_10
    move-object v0, v1

    .line 448
    :cond_11
    :goto_11
    return-object v0

    .line 438
    :cond_12
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    if-lt v2, v4, :cond_19

    :goto_17
    move-object v0, v1

    .line 448
    goto :goto_11

    .line 438
    :cond_19
    aget-object v0, v3, v2

    .line 439
    invoke-static {v0}, Lcom/qbao/sdk/d/a;->ah(Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1e} :catch_2a

    move-result v5

    if-nez v5, :cond_11

    .line 438
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 443
    :catch_25
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 445
    :catch_2a
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 380
    iget-object v0, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 381
    iget-object v0, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 383
    :cond_d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x0

    .line 386
    :try_start_36
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_40} :catch_52
    .catchall {:try_start_36 .. :try_end_40} :catchall_65

    .line 387
    if-eqz v1, :cond_49

    .line 388
    :try_start_42
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_49} :catch_7c
    .catchall {:try_start_42 .. :try_end_49} :catchall_79

    .line 394
    :cond_49
    if-eqz v1, :cond_51

    .line 395
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 396
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_74

    .line 402
    :cond_51
    :goto_51
    return-void

    .line 390
    :catch_52
    move-exception v0

    move-object v1, v2

    .line 391
    :goto_54
    :try_start_54
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_79

    .line 394
    if-eqz v1, :cond_51

    .line 395
    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 396
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_60

    goto :goto_51

    .line 398
    :catch_60
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 392
    :catchall_65
    move-exception v0

    .line 394
    :goto_66
    if-eqz v2, :cond_6e

    .line 395
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 396
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_6f

    .line 401
    :cond_6e
    :goto_6e
    throw v0

    .line 398
    :catch_6f
    move-exception v1

    .line 399
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 398
    :catch_74
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 392
    :catchall_79
    move-exception v0

    move-object v2, v1

    goto :goto_66

    .line 390
    :catch_7c
    move-exception v0

    goto :goto_54
.end method

.method public bc()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 408
    iget-object v2, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move-object v0, v1

    .line 428
    :goto_13
    return-object v0

    .line 411
    :cond_14
    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v1

    move v1, v2

    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1f} :catch_7e
    .catchall {:try_start_18 .. :try_end_1f} :catchall_79

    if-lt v1, v2, :cond_2d

    .line 422
    :try_start_21
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 423
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_13

    .line 424
    :catch_28
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 412
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/qbao/sdk/d/a;->fk:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    aget-object v5, v2, v1

    .line 413
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_3a} :catch_7e
    .catchall {:try_start_2d .. :try_end_3a} :catchall_79

    .line 414
    :try_start_3a
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3f} :catch_82
    .catchall {:try_start_3a .. :try_end_3f} :catchall_7c

    .line 415
    :try_start_3f
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 416
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_56} :catch_5b
    .catchall {:try_start_3f .. :try_end_56} :catchall_6b

    .line 411
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    move-object v3, v2

    goto :goto_18

    .line 418
    :catch_5b
    move-exception v1

    .line 419
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6b

    .line 422
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 423
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_65} :catch_66

    goto :goto_13

    .line 424
    :catch_66
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 420
    :catchall_6b
    move-exception v0

    move-object v4, v3

    .line 422
    :goto_6d
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 423
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_73} :catch_74

    .line 427
    :goto_73
    throw v0

    .line 424
    :catch_74
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    .line 420
    :catchall_79
    move-exception v0

    move-object v2, v3

    goto :goto_6d

    :catchall_7c
    move-exception v0

    goto :goto_6d

    .line 418
    :catch_7e
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_5c

    :catch_82
    move-exception v1

    move-object v3, v4

    goto :goto_5c
.end method
