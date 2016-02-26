.class Lcom/qbao/sdk/a/a$4;
.super Lcom/qbao/sdk/b/c;
.source "GameLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cX:Lcom/qbao/sdk/a/a;

.field private final synthetic cY:Lcom/qbao/core/a/b;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/a$4;->cX:Lcom/qbao/sdk/a/a;

    iput-object p3, p0, Lcom/qbao/sdk/a/a$4;->cY:Lcom/qbao/core/a/b;

    .line 196
    invoke-direct {p0, p2}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/qbao/sdk/a/a$4;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/qbao/sdk/a/a$4;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 210
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 213
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1d

    .line 214
    check-cast p1, Lorg/json/JSONObject;

    .line 215
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/qbao/sdk/a/a$4;->cY:Lcom/qbao/core/a/b;

    if-eqz v1, :cond_1d

    .line 217
    const-string v1, "authToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/qbao/sdk/a/a$4;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v1, v0}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 221
    :cond_1d
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    const-string v0, "https://testsdkserver.qbao.com/sdklogin/v10/getLoginToken"

    return-object v0
.end method
