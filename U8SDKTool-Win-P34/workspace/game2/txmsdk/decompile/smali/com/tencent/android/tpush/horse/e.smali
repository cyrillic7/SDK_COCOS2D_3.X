.class public Lcom/tencent/android/tpush/horse/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()J
    .registers 2

    .prologue
    .line 25
    sget v0, Lcom/tencent/android/tpush/service/a/a;->q:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 11
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-nez v1, :cond_8

    .line 20
    :cond_7
    :goto_7
    return v0

    .line 14
    :cond_8
    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->a()J

    move-result-wide v2

    .line 15
    const-string v1, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ isStrategyExpired,timeStamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",expiredPeriod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    add-long/2addr v2, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 17
    const-string v0, "XGService"

    const-string v1, ">>not expiredPeriod "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 30
    sget v0, Lcom/tencent/android/tpush/service/a/a;->o:I

    return v0
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 35
    sget v0, Lcom/tencent/android/tpush/service/a/a;->p:I

    return v0
.end method
