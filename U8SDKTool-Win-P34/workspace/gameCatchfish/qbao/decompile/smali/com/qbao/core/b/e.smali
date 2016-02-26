.class public Lcom/qbao/core/b/e;
.super Ljava/lang/Object;
.source "MtkDualModeSupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 19
    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 21
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gsm.sim.operator.imsi"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 24
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 25
    if-ne p1, v5, :cond_41

    .line 27
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 33
    :cond_40
    :goto_40
    return-object v0

    .line 30
    :cond_41
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_44} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_44} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_44} :catch_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_44} :catch_65

    goto :goto_40

    .line 34
    :catch_45
    move-exception v0

    .line 36
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37
    :catch_4c
    move-exception v0

    .line 39
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 40
    :catch_53
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 43
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5f

    .line 44
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 46
    :cond_5f
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_65
    move-exception v0

    .line 49
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
