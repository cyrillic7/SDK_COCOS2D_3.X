.class public Lcom/duoku/platform/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method public static a()Z
    .registers 6

    .prologue
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    sget-wide v2, Lcom/duoku/platform/util/g;->a:J

    sub-long v2, v0, v2

    .line 9
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_16

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 10
    const/4 v0, 0x1

    .line 13
    :goto_15
    return v0

    .line 12
    :cond_16
    sput-wide v0, Lcom/duoku/platform/util/g;->a:J

    .line 13
    const/4 v0, 0x0

    goto :goto_15
.end method
