.class Lcom/qbao/sdk/a/b$1;
.super Lcom/qbao/sdk/b/c;
.source "GamePayAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/b;->a(Lorg/json/JSONObject;Lcom/qbao/core/a/b;)V
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
    iput-object p2, p0, Lcom/qbao/sdk/a/b$1;->cY:Lcom/qbao/core/a/b;

    .line 47
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qbao/sdk/a/b$1;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/qbao/sdk/a/b$1;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 67
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qbao/sdk/a/b$1;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/qbao/sdk/a/b$1;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 61
    :cond_9
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "https://testsdkserver.qbao.com/sdkpay/v10/payrequest"

    return-object v0
.end method
