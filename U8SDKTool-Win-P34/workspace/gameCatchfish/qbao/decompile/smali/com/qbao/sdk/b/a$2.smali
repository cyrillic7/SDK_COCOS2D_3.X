.class Lcom/qbao/sdk/b/a$2;
.super Lcom/qbao/sdk/b/c;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dx:Lcom/qbao/core/a/b;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V
    .registers 3

    .prologue
    .line 1
    iput-object p2, p0, Lcom/qbao/sdk/b/a$2;->dx:Lcom/qbao/core/a/b;

    .line 68
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qbao/sdk/b/a$2;->dx:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/qbao/sdk/b/a$2;->dx:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 84
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 88
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    .line 89
    check-cast p1, Lorg/json/JSONObject;

    .line 90
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/qbao/sdk/b/a$2;->dx:Lcom/qbao/core/a/b;

    if-eqz v1, :cond_15

    .line 92
    iget-object v1, p0, Lcom/qbao/sdk/b/a$2;->dx:Lcom/qbao/core/a/b;

    invoke-interface {v1, v0}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 95
    :cond_15
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "GET"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "https://testuser.qbao.com/api/v11/uc/verify/getMsgCode"

    return-object v0
.end method
