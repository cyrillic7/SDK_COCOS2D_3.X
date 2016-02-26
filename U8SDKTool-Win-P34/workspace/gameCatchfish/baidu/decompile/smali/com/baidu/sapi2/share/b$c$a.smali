.class Lcom/baidu/sapi2/share/b$c$a;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Lcom/baidu/sapi2/share/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/b$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/b$c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b$c;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/baidu/sapi2/share/b$c$a;->a:Lcom/baidu/sapi2/share/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 4
    .param p1, "receiverIntent"    # Landroid/content/Intent;

    .prologue
    .line 287
    new-instance v0, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v1, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_REQ:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v0, v1}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 288
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 7
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .param p2, "receiverIntent"    # Landroid/content/Intent;

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/share/b;->c()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v2, Lcom/baidu/sapi2/share/b$c$a$a;

    invoke-direct {v2, p0, p2}, Lcom/baidu/sapi2/share/b$c$a$a;-><init>(Lcom/baidu/sapi2/share/b$c$a;Landroid/content/Intent;)V

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 283
    :goto_f
    return-void

    .line 280
    :catch_10
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
