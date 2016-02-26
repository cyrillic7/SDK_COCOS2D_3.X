.class public Lcom/baidu/bdgame/sdk/obf/ko;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 4

    .prologue
    .line 23
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 25
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 30
    :goto_f
    return-object v0

    .line 26
    :catch_10
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 30
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ko;->a([B)[B

    move-result-object v0

    .line 43
    if-eqz v0, :cond_b

    .line 44
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kn;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
