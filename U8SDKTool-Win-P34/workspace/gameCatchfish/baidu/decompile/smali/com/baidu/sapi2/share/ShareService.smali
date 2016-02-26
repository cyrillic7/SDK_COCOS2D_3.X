.class public final Lcom/baidu/sapi2/share/ShareService;
.super Landroid/app/Service;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/share/ShareService$b;,
        Lcom/baidu/sapi2/share/ShareService$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private static c:Lcom/baidu/sapi2/d;

.field private static d:Z


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/ShareService;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/share/ShareService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/share/ShareService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/share/ShareService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/share/ShareService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareService;->e:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a()Z
    .registers 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/baidu/sapi2/share/ShareService;->d:Z

    return v0
.end method

.method static synthetic b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/sapi2/share/ShareService;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 130
    :try_start_0
    sput-object p1, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    .line 131
    invoke-static {p1}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v1

    sput-object v1, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/d;

    .line 132
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    sput-object v1, Lcom/baidu/sapi2/share/ShareService;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 133
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/sapi2/share/ShareService;->d:Z
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 137
    :goto_19
    return-void

    .line 134
    :catch_1a
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/sapi2/share/ShareService;->d:Z

    goto :goto_19
.end method

.method a(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "replay"    # Landroid/os/Parcel;

    .prologue
    .line 144
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v4, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v5, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_ACK:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v4, v5}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    .line 146
    .local v4, "model":Lcom/baidu/sapi2/share/ShareModel;
    sget-object v5, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v5}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    .line 147
    .local v2, "currentAccount":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v2, :cond_1c

    .line 148
    sget-object v5, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 150
    :cond_1c
    invoke-virtual {v4, v2}, Lcom/baidu/sapi2/share/ShareModel;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 151
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v6}, Lcom/baidu/sapi2/d;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v6}, Lcom/baidu/sapi2/d;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 154
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    sget-object v5, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    goto :goto_41

    .line 157
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_56
    sget-object v5, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    sget-object v6, Lcom/baidu/sapi2/share/ShareService;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-static {v5, v6, v4}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 158
    const-string v5, "LOGIN_SHARE_MODEL"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    sget-object v5, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v5}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 160
    const-string v5, "RELOGIN_CREDENTIALS"

    sget-object v6, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v7}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_7f
    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v6

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 165
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    new-instance v0, Lcom/baidu/sapi2/share/ShareService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/share/ShareService$a;-><init>(Lcom/baidu/sapi2/share/ShareService;Lcom/baidu/sapi2/share/ShareService$b;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareService;->e:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareService;->stopSelf()V

    .line 52
    const/4 v0, 0x2

    return v0
.end method
