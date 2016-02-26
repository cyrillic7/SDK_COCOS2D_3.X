.class Lcom/baidu/sapi2/share/b$a$a$a$a;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/b$a$a$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Landroid/content/ServiceConnection;

.field final synthetic c:Lcom/baidu/sapi2/share/b$a$a$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b$a$a$a;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .registers 4

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->c:Lcom/baidu/sapi2/share/b$a$a$a;

    iput-object p2, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 114
    :try_start_0
    new-instance v4, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v5, Lcom/baidu/sapi2/share/ShareEvent;->VALIDATE:Lcom/baidu/sapi2/share/ShareEvent;

    iget-object v6, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->c:Lcom/baidu/sapi2/share/b$a$a$a;

    iget-object v6, v6, Lcom/baidu/sapi2/share/b$a$a$a;->b:Lcom/baidu/sapi2/share/b$a$a;

    iget-object v6, v6, Lcom/baidu/sapi2/share/b$a$a;->a:Lcom/baidu/sapi2/share/b$a;

    iget-object v6, v6, Lcom/baidu/sapi2/share/b$a;->b:Lcom/baidu/sapi2/SapiAccount;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/baidu/sapi2/SapiAccount;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->c:Lcom/baidu/sapi2/share/b$a$a$a;

    iget-object v9, v9, Lcom/baidu/sapi2/share/b$a$a$a;->b:Lcom/baidu/sapi2/share/b$a$a;

    iget-object v9, v9, Lcom/baidu/sapi2/share/b$a$a;->a:Lcom/baidu/sapi2/share/b$a;

    iget-object v9, v9, Lcom/baidu/sapi2/share/b$a;->b:Lcom/baidu/sapi2/SapiAccount;

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;Ljava/util/List;)V

    .line 117
    .local v4, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    invoke-static {v4}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/share/ShareModel;)Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 119
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v5, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->a:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 120
    .local v3, "result":Z
    if-nez v3, :cond_44

    .line 121
    iget-object v5, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->c:Lcom/baidu/sapi2/share/b$a$a$a;

    iget-object v5, v5, Lcom/baidu/sapi2/share/b$a$a$a;->a:Landroid/content/Intent;

    if-eqz v5, :cond_44

    .line 122
    iget-object v5, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->c:Lcom/baidu/sapi2/share/b$a$a$a;

    iget-object v5, v5, Lcom/baidu/sapi2/share/b$a$a$a;->b:Lcom/baidu/sapi2/share/b$a$a;

    iget-object v6, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->c:Lcom/baidu/sapi2/share/b$a$a$a;

    iget-object v6, v6, Lcom/baidu/sapi2/share/b$a$a$a;->a:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/share/b$a$a;->a(Landroid/content/Intent;)V

    .line 125
    :cond_44
    invoke-static {}, Lcom/baidu/sapi2/share/b;->c()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/share/b$a$a$a$a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4f} :catch_50

    .line 129
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "result":Z
    .end local v4    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :goto_4f
    return-void

    .line 126
    :catch_50
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_4f
.end method
