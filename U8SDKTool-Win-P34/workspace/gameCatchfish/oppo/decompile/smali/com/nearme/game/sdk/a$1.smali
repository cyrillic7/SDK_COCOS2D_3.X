.class final Lcom/nearme/game/sdk/a$1;
.super Landroid/os/Handler;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 101
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_28

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/nearme/game/sdk/c;

    if-eqz v0, :cond_28

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nearme/game/sdk/c;

    .line 104
    iget-object v1, v0, Lcom/nearme/game/sdk/c;->a:Lcom/nearme/game/sdk/callback/ApiCallback;

    .line 105
    iget-object v0, v0, Lcom/nearme/game/sdk/c;->b:Lcom/nearme/game/sdk/common/model/ApiResult;

    .line 106
    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    .line 107
    const/16 v2, 0x3e9

    iget v3, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    if-eq v2, v3, :cond_29

    .line 108
    iget-object v2, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    iget v0, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    invoke-interface {v1, v2, v0}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 115
    :cond_28
    :goto_28
    return-void

    .line 110
    :cond_29
    iget-object v0, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/nearme/game/sdk/callback/ApiCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_28
.end method
