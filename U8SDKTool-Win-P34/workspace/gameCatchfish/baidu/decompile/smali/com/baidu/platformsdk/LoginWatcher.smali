.class public Lcom/baidu/platformsdk/LoginWatcher;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->b:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 47
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    :cond_11
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    if-nez v0, :cond_18

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.baidu.platformsdk.intent.login"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/baidu/platformsdk/LoginWatcher;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    :cond_18
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    :cond_9
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "com.baidu.platformsdk.intent.login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 58
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_19

    .line 72
    :cond_18
    return-void

    .line 61
    :cond_19
    const-string v0, "result_code"

    const/16 v1, -0x3e9

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 62
    const-string v0, "result_desc"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_18

    .line 64
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatcher;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/n;

    .line 66
    const/4 v4, 0x0

    :try_start_3a
    invoke-interface {v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_41

    .line 63
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 67
    :catch_41
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method
