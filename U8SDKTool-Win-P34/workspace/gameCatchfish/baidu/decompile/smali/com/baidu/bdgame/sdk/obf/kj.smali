.class public Lcom/baidu/bdgame/sdk/obf/kj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "489230_guangshan"

.field private static final b:Ljava/lang/String; = "489230_guangshan"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 13
    :try_start_0
    const-string v0, "489230_guangshan"

    const-string v1, "489230_guangshan"

    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kh;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kn;->a([B)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 18
    :goto_12
    return-object v0

    .line 15
    :catch_13
    move-exception v0

    .line 18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    :try_start_0
    const-string v0, "489230_guangshan"

    const-string v1, "489230_guangshan"

    invoke-static {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/kh;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 65
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 68
    :goto_f
    return-object v0

    .line 66
    :catch_10
    move-exception v0

    .line 68
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 22
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 24
    :try_start_4
    const-string v1, "489230_guangshan"

    const-string v2, "489230_guangshan"

    invoke-static {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kh;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 25
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    .line 29
    :goto_13
    return-object v0

    .line 26
    :catch_14
    move-exception v0

    .line 29
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 43
    :try_start_0
    const-string v0, "489230_guangshan"

    const-string v1, "489230_guangshan"

    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kh;->a(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 47
    :goto_e
    return-object v0

    .line 45
    :catch_f
    move-exception v0

    .line 47
    const/4 v0, 0x0

    goto :goto_e
.end method
