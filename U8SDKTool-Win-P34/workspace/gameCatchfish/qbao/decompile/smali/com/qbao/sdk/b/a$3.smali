.class Lcom/qbao/sdk/b/a$3;
.super Lcom/qbao/sdk/b/c;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/a;->f(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
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
    iput-object p2, p0, Lcom/qbao/sdk/b/a$3;->cY:Lcom/qbao/core/a/b;

    .line 109
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/qbao/sdk/b/a$3;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/qbao/sdk/b/a$3;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 132
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 119
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    .line 120
    check-cast p1, Lorg/json/JSONObject;

    .line 121
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/qbao/sdk/b/a$3;->cY:Lcom/qbao/core/a/b;

    if-eqz v1, :cond_15

    .line 123
    iget-object v1, p0, Lcom/qbao/sdk/b/a$3;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v1, v0}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 126
    :cond_15
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "http://testm.qbao.com/api/v30/account4Client/checkMobileVerifyCode"

    return-object v0
.end method
