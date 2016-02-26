.class Lcom/qbao/sdk/a/e$3;
.super Ljava/lang/Object;
.source "QbaoPayMain.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/e;->q(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/e$3;->dr:Landroid/content/Context;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 253
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->am()V

    .line 254
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 255
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/a/e;->a(Lcom/qbao/sdk/a/e;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "payCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request payInfo failure->>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 257
    :cond_32
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 241
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->am()V

    .line 242
    if-eqz p1, :cond_24

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    .line 243
    check-cast p1, Lorg/json/JSONObject;

    .line 244
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_24

    .line 246
    iget-object v1, p0, Lcom/qbao/sdk/a/e$3;->dr:Landroid/content/Context;

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/a/e;->a(Lcom/qbao/sdk/a/e;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qbao/sdk/a/e;->b(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 249
    :cond_24
    return-void
.end method
