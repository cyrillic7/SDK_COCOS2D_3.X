.class Lcom/qbao/sdk/b/a$1;
.super Lcom/qbao/sdk/b/c;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/a;->b(Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cY:Lcom/qbao/core/a/b;


# direct methods
.method constructor <init>(Lcom/qbao/core/a/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/b/a$1;->cY:Lcom/qbao/core/a/b;

    .line 24
    invoke-direct {p0}, Lcom/qbao/sdk/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qbao/sdk/b/a$1;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/qbao/sdk/b/a$1;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 40
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 44
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_18

    .line 45
    check-cast p1, Lorg/json/JSONObject;

    .line 46
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 48
    const/4 v0, -0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/b/a$1;->a(ILjava/lang/String;)V

    .line 53
    :cond_18
    :goto_18
    return-void

    .line 50
    :cond_19
    iget-object v1, p0, Lcom/qbao/sdk/b/a$1;->cY:Lcom/qbao/core/a/b;

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/d;->b(Ljava/lang/String;Lcom/qbao/core/a/b;)V

    goto :goto_18
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "GET"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const-string v0, "https://testuser.qbao.com/api/v11/uc/verify/getImgCode4Msg"

    return-object v0
.end method
