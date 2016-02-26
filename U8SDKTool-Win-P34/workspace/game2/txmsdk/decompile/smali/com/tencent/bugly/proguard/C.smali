.class public final Lcom/tencent/bugly/proguard/C;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/D;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    new-instance v0, Lcom/tencent/bugly/proguard/F;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/F;-><init>()V

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    new-instance v0, Lcom/tencent/bugly/proguard/E;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/E;-><init>()V

    goto :goto_9
.end method
