.class final Lcom/nearme/game/sdk/b$3;
.super Ljava/lang/Object;
.source "GCInternalImpl.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/nearme/game/sdk/callback/ApiCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 3

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nearme/game/sdk/b$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 160
    :cond_9
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 150
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->a:Landroid/content/Context;

    new-instance v1, Lcom/nearme/game/sdk/component/PayResultReceiver;

    iget-object v2, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-direct {v1, p1, v2}, Lcom/nearme/game/sdk/component/PayResultReceiver;-><init>(Ljava/lang/String;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "nearme.pay.response"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    :cond_19
    return-void
.end method
