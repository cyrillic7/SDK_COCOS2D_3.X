.class final Lcom/meizu/gamecenter/a/d;
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
    iput-object p1, p0, Lcom/meizu/gamecenter/a/d;->a:Lcom/meizu/gamecenter/a/a;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/meizu/gamecenter/a/d;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/a;->a(Lcom/meizu/gamecenter/a/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gamecenter/a/d;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v2}, Lcom/meizu/gamecenter/a/a;->g(Lcom/meizu/gamecenter/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method
