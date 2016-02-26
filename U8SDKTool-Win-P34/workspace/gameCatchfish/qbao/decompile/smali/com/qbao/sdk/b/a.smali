.class public Lcom/qbao/sdk/b/a;
.super Ljava/lang/Object;
.source "AccountRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 228
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    .line 229
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "sign"

    sget-object v2, Lcom/qbao/sdk/e/a;->fu:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/qbao/sdk/b/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/qbao/sdk/b/a$6;

    invoke-direct {v1, v0, p1}, Lcom/qbao/sdk/b/a$6;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 258
    invoke-virtual {v1}, Lcom/qbao/sdk/b/c;->y()V

    .line 259
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V
    .registers 9

    .prologue
    .line 184
    new-instance v2, Lcom/qbao/core/c/f;

    invoke-direct {v2}, Lcom/qbao/core/c/f;-><init>()V

    .line 185
    const-string v0, "username"

    invoke-virtual {v2, v0, p0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, ""

    .line 188
    :try_start_c
    sget-object v1, Lcom/qbao/sdk/e/a;->fs:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/qbao/core/util/DESCode;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_52

    move-result-object v0

    .line 194
    :goto_12
    const-string v1, "password"

    invoke-virtual {v2, v1, v0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "securityCode"

    invoke-virtual {v2, v1, p1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "nameType"

    const-string v3, "2"

    invoke-virtual {v2, v1, v3}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "verifyCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/qbao/sdk/e/a;->fu:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/qbao/sdk/b/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/qbao/sdk/b/a$5;

    invoke-direct {v0, v2, p3}, Lcom/qbao/sdk/b/a$5;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/c;)V

    .line 224
    invoke-virtual {v0}, Lcom/qbao/sdk/b/c;->y()V

    .line 225
    return-void

    .line 189
    :catch_52
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const-string v1, "-1"

    invoke-virtual {p3, v1}, Lcom/qbao/core/a/c;->a(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 7

    .prologue
    .line 63
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    .line 64
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "nameType"

    invoke-virtual {v0, v1, p1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "codeType"

    invoke-virtual {v0, v1, p3}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "imageCode"

    invoke-virtual {v0, v1, p2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/qbao/sdk/b/a$2;

    invoke-direct {v1, v0, p4}, Lcom/qbao/sdk/b/a$2;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 97
    invoke-virtual {v1}, Lcom/qbao/sdk/b/c;->y()V

    .line 98
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V
    .registers 10

    .prologue
    .line 142
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    .line 143
    const-string v1, "mobile"

    invoke-virtual {v0, v1, p0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p3, p1}, Lcom/qbao/sdk/b/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/qbao/sdk/e/a;->fu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qbao/core/util/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/qbao/sdk/b/a$4;

    invoke-direct {v1, v0, p4}, Lcom/qbao/sdk/b/a$4;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/c;)V

    .line 174
    invoke-virtual {v1}, Lcom/qbao/sdk/b/c;->y()V

    .line 177
    return-void
.end method

.method public static b(Lcom/qbao/core/a/b;)V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/qbao/sdk/b/a$1;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/b/a$1;-><init>(Lcom/qbao/core/a/b;)V

    .line 55
    invoke-virtual {v0}, Lcom/qbao/sdk/b/c;->y()V

    .line 56
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 7

    .prologue
    .line 105
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    .line 106
    const-string v1, "mobile"

    invoke-virtual {v0, v1, p0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "verifyCode"

    invoke-virtual {v0, v1, p1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "sign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qbao/sdk/e/a;->fu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/core/util/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/qbao/sdk/b/a$3;

    invoke-direct {v1, v0, p2}, Lcom/qbao/sdk/b/a$3;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 134
    invoke-virtual {v1}, Lcom/qbao/sdk/b/c;->y()V

    .line 135
    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/core/util/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    return-object v0
.end method
