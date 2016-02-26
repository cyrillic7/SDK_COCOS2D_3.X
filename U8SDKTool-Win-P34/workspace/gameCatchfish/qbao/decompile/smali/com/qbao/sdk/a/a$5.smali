.class Lcom/qbao/sdk/a/a$5;
.super Lcom/qbao/sdk/b/c;
.source "GameLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cX:Lcom/qbao/sdk/a/a;

.field private final synthetic cY:Lcom/qbao/core/a/b;

.field private final synthetic cZ:Ljava/lang/String;

.field private final synthetic da:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/c/f;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/a$5;->cX:Lcom/qbao/sdk/a/a;

    iput-object p3, p0, Lcom/qbao/sdk/a/a$5;->cZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/qbao/sdk/a/a$5;->da:Ljava/lang/String;

    iput-object p5, p0, Lcom/qbao/sdk/a/a$5;->cY:Lcom/qbao/core/a/b;

    .line 242
    invoke-direct {p0, p2}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 255
    const/16 v0, 0x7dc

    if-eq p1, v0, :cond_8

    const/16 v0, 0x7da

    if-ne p1, v0, :cond_14

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/qbao/sdk/a/a$5;->cX:Lcom/qbao/sdk/a/a;

    iget-object v1, p0, Lcom/qbao/sdk/a/a$5;->cZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/qbao/sdk/a/a$5;->da:Ljava/lang/String;

    iget-object v3, p0, Lcom/qbao/sdk/a/a$5;->cY:Lcom/qbao/core/a/b;

    invoke-static {v0, v1, v2, v3}, Lcom/qbao/sdk/a/a;->b(Lcom/qbao/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 261
    :goto_13
    return-void

    .line 259
    :cond_14
    iget-object v0, p0, Lcom/qbao/sdk/a/a$5;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    goto :goto_13
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 264
    if-eqz p1, :cond_33

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_33

    .line 265
    check-cast p1, Lorg/json/JSONObject;

    .line 266
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/qbao/sdk/a/a$5;->cX:Lcom/qbao/sdk/a/a;

    const-string v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/sdk/a/a;->b(Lcom/qbao/sdk/a/a;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/qbao/sdk/a/a$5;->cX:Lcom/qbao/sdk/a/a;

    const-string v2, "userName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qbao/sdk/a/a;->c(Lcom/qbao/sdk/a/a;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/qbao/sdk/a/a$5;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_33

    .line 270
    iget-object v0, p0, Lcom/qbao/sdk/a/a$5;->cY:Lcom/qbao/core/a/b;

    iget-object v1, p0, Lcom/qbao/sdk/a/a$5;->cX:Lcom/qbao/sdk/a/a;

    invoke-static {v1}, Lcom/qbao/sdk/a/a;->a(Lcom/qbao/sdk/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 274
    :cond_33
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    const-string v0, "https://testsdkserver.qbao.com/sdklogin/v10/getUserInfoByToken"

    return-object v0
.end method
