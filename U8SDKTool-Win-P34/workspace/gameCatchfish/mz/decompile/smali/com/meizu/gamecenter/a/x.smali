.class final Lcom/meizu/gamecenter/a/x;
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
    iput-object p1, p0, Lcom/meizu/gamecenter/a/x;->a:Lcom/meizu/gamecenter/a/t;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/gamecenter/a/x;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->b(Lcom/meizu/gamecenter/a/t;)Lcom/meizu/gamecenter/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/c/d;

    .line 128
    if-eqz v0, :cond_1d

    .line 130
    :try_start_e
    iget-object v1, p0, Lcom/meizu/gamecenter/a/x;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/t;->c(Lcom/meizu/gamecenter/a/t;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gamecenter/a/x;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v2}, Lcom/meizu/gamecenter/a/t;->d(Lcom/meizu/gamecenter/a/t;)Lcom/meizu/c/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/c/d;->a(Landroid/os/Bundle;Lcom/meizu/c/a;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 134
    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
