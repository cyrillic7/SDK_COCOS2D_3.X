.class final Lcom/meizu/gamecenter/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/t;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/t;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/z;->a:Lcom/meizu/gamecenter/a/t;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/gamecenter/a/z;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->b(Lcom/meizu/gamecenter/a/t;)Lcom/meizu/gamecenter/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/c/d;

    .line 158
    if-eqz v0, :cond_17

    .line 160
    :try_start_e
    iget-object v1, p0, Lcom/meizu/gamecenter/a/z;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/t;->c(Lcom/meizu/gamecenter/a/t;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/c/d;->b(Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 164
    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method
