.class Lcom/baidu/sapi2/share/ShareReceiver$a;
.super Ljava/lang/Object;
.source "ShareReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/ShareReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/baidu/sapi2/share/ShareModel;

.field final synthetic d:Lcom/baidu/sapi2/share/ShareReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/ShareReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 5

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->d:Lcom/baidu/sapi2/share/ShareReceiver;

    iput-object p2, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->c:Lcom/baidu/sapi2/share/ShareModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->b:Landroid/content/Intent;

    const-string v3, "RELOGIN_CREDENTIALS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/share/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->a()Lcom/baidu/sapi2/share/g;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 88
    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->a()Lcom/baidu/sapi2/share/g;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/share/ShareReceiver$a;->c:Lcom/baidu/sapi2/share/ShareModel;

    invoke-interface {v1, v2}, Lcom/baidu/sapi2/share/g;->a(Lcom/baidu/sapi2/share/ShareModel;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 93
    :cond_1c
    :goto_1c
    return-void

    .line 90
    :catch_1d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method
