.class public Lcom/duoku/platform/ui/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method public static a()Z
    .registers 6

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    sget-wide v2, Lcom/duoku/platform/ui/b/d;->a:J

    sub-long v2, v0, v2

    .line 34
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_16

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 36
    const/4 v0, 0x1

    .line 41
    :goto_15
    return v0

    .line 39
    :cond_16
    sput-wide v0, Lcom/duoku/platform/ui/b/d;->a:J

    .line 41
    const/4 v0, 0x0

    goto :goto_15
.end method
