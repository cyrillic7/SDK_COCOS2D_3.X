.class Lcom/qbao/sdk/a/a$2;
.super Lcom/qbao/sdk/b/c;
.source "GameLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/a;->a(Lcom/qbao/core/a/b;)V
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
    iput-object p1, p0, Lcom/qbao/sdk/a/a$2;->cX:Lcom/qbao/sdk/a/a;

    iput-object p3, p0, Lcom/qbao/sdk/a/a$2;->cY:Lcom/qbao/core/a/b;

    .line 118
    invoke-direct {p0, p2}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/qbao/sdk/a/a$2;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/qbao/sdk/a/a$2;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 132
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 135
    if-eqz p1, :cond_1f

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1f

    .line 136
    check-cast p1, Lorg/json/JSONObject;

    .line 137
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1f

    .line 139
    const-string v1, "authCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/qbao/sdk/a/a$2;->cY:Lcom/qbao/core/a/b;

    if-eqz v1, :cond_1f

    .line 141
    iget-object v1, p0, Lcom/qbao/sdk/a/a$2;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v1, v0}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 146
    :cond_1f
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/qbao/sdk/b/c;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string v0, "https://testsdkserver.qbao.com/sdklogin/v10/getAuthCode"

    return-object v0
.end method
