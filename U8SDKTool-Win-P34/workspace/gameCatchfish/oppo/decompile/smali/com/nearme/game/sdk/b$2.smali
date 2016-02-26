.class final Lcom/nearme/game/sdk/b$2;
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
.field final synthetic a:Lcom/nearme/game/sdk/b;

.field private synthetic b:Lcom/nearme/game/sdk/callback/ApiCallback;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/b;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 3

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nearme/game/sdk/b$2;->a:Lcom/nearme/game/sdk/b;

    iput-object p2, p0, Lcom/nearme/game/sdk/b$2;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/callback/ApiCallback;->onSuccess(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2;->a:Lcom/nearme/game/sdk/b;

    iget-object v0, v0, Lcom/nearme/game/sdk/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nearme/game/sdk/b$2$1;

    invoke-direct {v1, p0}, Lcom/nearme/game/sdk/b$2$1;-><init>(Lcom/nearme/game/sdk/b$2;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
