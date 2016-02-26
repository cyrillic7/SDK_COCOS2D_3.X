.class Lcom/qbao/sdk/b/a$5;
.super Lcom/qbao/sdk/b/c;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dy:Lcom/qbao/core/a/c;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/c;)V
    .registers 3

    .prologue
    .line 1
    iput-object p2, p0, Lcom/qbao/sdk/b/a$5;->dy:Lcom/qbao/core/a/c;

    .line 198
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/qbao/sdk/b/a$5;->dy:Lcom/qbao/core/a/c;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/qbao/sdk/b/a$5;->dy:Lcom/qbao/core/a/c;

    invoke-virtual {v0, p2}, Lcom/qbao/core/a/c;->a(Ljava/lang/String;)V

    .line 212
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 215
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    .line 216
    check-cast p1, Lorg/json/JSONObject;

    .line 217
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/qbao/sdk/b/a$5;->dy:Lcom/qbao/core/a/c;

    if-eqz v1, :cond_15

    .line 219
    iget-object v1, p0, Lcom/qbao/sdk/b/a$5;->dy:Lcom/qbao/core/a/c;

    invoke-virtual {v1, v0}, Lcom/qbao/core/a/c;->b(Ljava/lang/String;)V

    .line 222
    :cond_15
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    const-string v0, "https://testuser.qbao.com/api/v11/uc/regist/doRegistNew"

    return-object v0
.end method
