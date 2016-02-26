.class final Lcom/meizu/gamecenter/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/a;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/e;->a:Lcom/meizu/gamecenter/a/a;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gamecenter/a/e;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->a(Lcom/meizu/gamecenter/a/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/e;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/a;->g(Lcom/meizu/gamecenter/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 86
    :goto_f
    return-void

    .line 84
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
