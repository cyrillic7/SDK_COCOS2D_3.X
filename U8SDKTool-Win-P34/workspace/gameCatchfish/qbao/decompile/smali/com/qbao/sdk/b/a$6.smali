.class Lcom/qbao/sdk/b/a$6;
.super Lcom/qbao/sdk/b/c;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cY:Lcom/qbao/core/a/b;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V
    .registers 3

    .prologue
    .line 1
    iput-object p2, p0, Lcom/qbao/sdk/b/a$6;->cY:Lcom/qbao/core/a/b;

    .line 231
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/qbao/sdk/b/a$6;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/qbao/sdk/b/a$6;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 245
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/qbao/sdk/b/a$6;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_17

    .line 249
    if-eqz p1, :cond_17

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    .line 250
    check-cast p1, Lorg/json/JSONObject;

    .line 251
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/qbao/sdk/b/a$6;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v1, v0}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 256
    :cond_17
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    const-string v0, "https://testuser.qbao.com/api/v11/uc/getUsername"

    return-object v0
.end method
