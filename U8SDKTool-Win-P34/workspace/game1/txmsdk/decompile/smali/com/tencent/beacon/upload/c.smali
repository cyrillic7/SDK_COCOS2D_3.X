.class public final Lcom/tencent/beacon/upload/c;
.super Lcom/tencent/beacon/upload/a;
.source "ProGuard"


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/beacon/c/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 21
    const/4 v0, 0x0

    const/16 v1, 0x66

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/beacon/upload/a;-><init>(Landroid/content/Context;II)V

    .line 16
    iput-object v2, p0, Lcom/tencent/beacon/upload/c;->e:Landroid/content/Context;

    .line 17
    iput-object v2, p0, Lcom/tencent/beacon/upload/c;->f:Lcom/tencent/beacon/c/a/b;

    .line 18
    iput-object p1, p0, Lcom/tencent/beacon/upload/c;->e:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/beacon/c/a/b;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 32
    const-string v1, "QIMEIUploadDatas.getUploadRequestPackage() start"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/tencent/beacon/upload/c;->f:Lcom/tencent/beacon/c/a/b;

    if-eqz v1, :cond_10

    .line 34
    iget-object v0, p0, Lcom/tencent/beacon/upload/c;->f:Lcom/tencent/beacon/c/a/b;

    .line 68
    :goto_f
    return-object v0

    .line 37
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/tencent/beacon/upload/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/j;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/j;

    move-result-object v3

    .line 38
    if-nez v3, :cond_28

    .line 39
    const-string v1, "QIMEIInfo instance is null, return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_f

    .line 65
    :catch_21
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :goto_25
    iget-object v0, p0, Lcom/tencent/beacon/upload/c;->f:Lcom/tencent/beacon/c/a/b;

    goto :goto_f

    .line 43
    :cond_28
    if-nez v3, :cond_5a

    move-object v4, v0

    .line 47
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/tencent/beacon/upload/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;

    move-result-object v5

    .line 48
    const/4 v2, 0x1

    .line 49
    const/4 v3, 0x2

    .line 50
    const-string v1, "*^@K#K@!"

    .line 51
    if-eqz v5, :cond_47

    .line 52
    invoke-virtual {v5}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v2

    .line 53
    invoke-virtual {v5}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v3

    .line 54
    invoke-virtual {v5}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_47
    invoke-virtual {v4}, Lcom/tencent/beacon/c/c/a;->a()[B

    move-result-object v4

    .line 57
    invoke-static {v4, v3, v2, v1}, Lcom/tencent/beacon/b/a;->a([BIILjava/lang/String;)[B

    move-result-object v1

    .line 58
    if-nez v1, :cond_93

    .line 59
    const-string v1, "encodeDatasByZipAndEncry failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 43
    :cond_5a
    new-instance v1, Lcom/tencent/beacon/c/c/a;

    invoke-direct {v1}, Lcom/tencent/beacon/c/c/a;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/beacon/a/j;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_67

    const-string v2, ""

    :cond_67
    iput-object v2, v1, Lcom/tencent/beacon/c/c/a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/beacon/a/j;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_71

    const-string v2, ""

    :cond_71
    iput-object v2, v1, Lcom/tencent/beacon/c/c/a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/beacon/a/j;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7b

    const-string v2, ""

    :cond_7b
    iput-object v2, v1, Lcom/tencent/beacon/c/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/beacon/a/j;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_85

    const-string v2, ""

    :cond_85
    iput-object v2, v1, Lcom/tencent/beacon/c/c/a;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/beacon/a/j;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8f

    const-string v2, ""

    :cond_8f
    iput-object v2, v1, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    move-object v4, v1

    goto :goto_2b

    .line 62
    :cond_93
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 63
    iget v4, p0, Lcom/tencent/beacon/upload/c;->a:I

    invoke-static {v4, v0, v1, v3, v2}, Lcom/tencent/beacon/b/a;->a(ILcom/tencent/beacon/a/e;[BII)Lcom/tencent/beacon/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/upload/c;->f:Lcom/tencent/beacon/c/a/b;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_9f} :catch_21

    goto :goto_25
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method
