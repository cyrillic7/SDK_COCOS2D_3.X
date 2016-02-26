.class final Lcom/nearme/game/sdk/b$1;
.super Ljava/lang/Object;
.source "GCInternalImpl.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nearme/game/sdk/callback/GameExitCallback;

.field private synthetic b:Landroid/app/Activity;

.field private synthetic c:Lcom/nearme/game/sdk/b;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/b;Lcom/nearme/game/sdk/callback/GameExitCallback;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nearme/game/sdk/b$1;->c:Lcom/nearme/game/sdk/b;

    iput-object p2, p0, Lcom/nearme/game/sdk/b$1;->a:Lcom/nearme/game/sdk/callback/GameExitCallback;

    iput-object p3, p0, Lcom/nearme/game/sdk/b$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 75
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nearme/game/sdk/b$1;->c:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0}, Lcom/nearme/game/sdk/b;->a()V

    .line 65
    iget-object v0, p0, Lcom/nearme/game/sdk/b$1;->a:Lcom/nearme/game/sdk/callback/GameExitCallback;

    if-eqz v0, :cond_f

    .line 66
    iget-object v0, p0, Lcom/nearme/game/sdk/b$1;->a:Lcom/nearme/game/sdk/callback/GameExitCallback;

    invoke-interface {v0}, Lcom/nearme/game/sdk/callback/GameExitCallback;->exitGame()V

    .line 70
    :goto_e
    return-void

    .line 68
    :cond_f
    iget-object v0, p0, Lcom/nearme/game/sdk/b$1;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitGameProcess(Landroid/app/Activity;)V

    goto :goto_e
.end method
