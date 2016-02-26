.class final Lcom/meizu/gamecenter/a/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/a;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/b;->a:Lcom/meizu/gamecenter/a/a;

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/gamecenter/a/b;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->a(Lcom/meizu/gamecenter/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 93
    iget-object v0, p0, Lcom/meizu/gamecenter/a/b;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->b(Lcom/meizu/gamecenter/a/a;)V

    .line 94
    iget-object v0, p0, Lcom/meizu/gamecenter/a/b;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->c(Lcom/meizu/gamecenter/a/a;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/gamecenter/a/b;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->d(Lcom/meizu/gamecenter/a/a;)V

    .line 96
    iget-object v0, p0, Lcom/meizu/gamecenter/a/b;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->e(Lcom/meizu/gamecenter/a/a;)V

    .line 98
    :cond_20
    return-void
.end method
