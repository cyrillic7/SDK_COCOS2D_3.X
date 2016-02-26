.class public Lcom/baidu/bdgame/sdk/obf/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 11
    if-nez p0, :cond_4

    .line 12
    const/4 v0, 0x0

    .line 18
    :goto_3
    return-object v0

    .line 14
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 15
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 16
    aget-byte v2, v1, v0

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 18
    :cond_16
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 27
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 28
    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 29
    aget-byte v2, v1, v0

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 31
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
