.class final Lcom/meizu/gamecenter/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/t;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/t;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/w;->a:Lcom/meizu/gamecenter/a/t;

    iput p2, p0, Lcom/meizu/gamecenter/a/w;->b:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/gamecenter/a/w;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->b(Lcom/meizu/gamecenter/a/t;)Lcom/meizu/gamecenter/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/c/d;

    .line 92
    if-eqz v0, :cond_1e

    .line 94
    :try_start_e
    iget-object v1, p0, Lcom/meizu/gamecenter/a/w;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/t;->c(Lcom/meizu/gamecenter/a/t;)Landroid/os/Bundle;

    move-result-object v1

    .line 95
    const-string v2, "gamebar_gravity"

    iget v3, p0, Lcom/meizu/gamecenter/a/w;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    invoke-interface {v0, v1}, Lcom/meizu/c/d;->a(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    .line 104
    :cond_1e
    :goto_1e
    return-void

    .line 99
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
