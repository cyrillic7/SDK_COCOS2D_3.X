.class public Lcom/tencent/tmapkupdatesdk/internal/c/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(II)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 123
    ushr-int v1, p0, p1

    .line 124
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
