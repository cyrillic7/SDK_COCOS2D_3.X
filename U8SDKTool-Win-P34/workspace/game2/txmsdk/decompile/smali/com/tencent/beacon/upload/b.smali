.class public final Lcom/tencent/beacon/upload/b;
.super Lcom/tencent/beacon/upload/a;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    .prologue
    .line 21
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/beacon/upload/a;-><init>(Landroid/content/Context;II)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/beacon/c/a/b;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 32
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 33
    :try_start_b
    invoke-virtual {p0}, Lcom/tencent/beacon/upload/b;->c()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v3, v0, v2, v4, v5}, Lcom/tencent/beacon/b/a;->a(ILcom/tencent/beacon/a/e;[BII)Lcom/tencent/beacon/c/a/b;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_1a

    move-result-object v0

    .line 38
    if-eqz v0, :cond_18

    .line 45
    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    .line 41
    goto :goto_17

    .line 42
    :catch_1a
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    const-string v0, "encode2RequestPackage failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 45
    goto :goto_17
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method
