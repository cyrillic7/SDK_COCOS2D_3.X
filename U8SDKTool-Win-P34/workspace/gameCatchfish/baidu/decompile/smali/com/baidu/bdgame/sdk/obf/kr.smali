.class public Lcom/baidu/bdgame/sdk/obf/kr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 6

    .prologue
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    sget-wide v2, Lcom/baidu/bdgame/sdk/obf/kr;->a:J

    sub-long v2, v0, v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    .line 13
    const/4 v0, 0x1

    .line 16
    :goto_13
    return v0

    .line 15
    :cond_14
    sput-wide v0, Lcom/baidu/bdgame/sdk/obf/kr;->a:J

    .line 16
    const/4 v0, 0x0

    goto :goto_13
.end method
