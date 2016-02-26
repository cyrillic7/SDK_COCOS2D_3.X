.class public final Lcom/baidu/sapi2/share/ShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/share/ShareReceiver$d;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private static c:Lcom/baidu/sapi2/d;

.field private static d:Lcom/baidu/sapi2/share/g;

.field private static e:Z

.field private static f:Landroid/os/Handler;

.field private static g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a()Lcom/baidu/sapi2/share/g;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->d:Lcom/baidu/sapi2/share/g;

    return-object v0
.end method

.method static synthetic b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 108
    :try_start_0
    sput-object p1, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v2

    sput-object v2, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/d;

    .line 110
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    sput-object v2, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 111
    new-instance v2, Lcom/baidu/sapi2/share/ShareReceiver$b;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/share/ShareReceiver$b;-><init>(Lcom/baidu/sapi2/share/ShareReceiver;)V

    sput-object v2, Lcom/baidu/sapi2/share/ShareReceiver;->d:Lcom/baidu/sapi2/share/g;

    .line 133
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ReceiverThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/baidu/sapi2/share/ShareReceiver;->g:Landroid/os/Handler;

    .line 136
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_35} :catch_36

    .line 140
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :goto_35
    return-void

    .line 137
    :catch_36
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    goto :goto_35
.end method

.method a(Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 10
    .param p1, "src"    # Lcom/baidu/sapi2/share/ShareModel;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 148
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/baidu/sapi2/share/ShareModel;->b(Landroid/content/Context;)V

    .line 150
    new-instance v3, Landroid/content/Intent;

    const-string v5, "baidu.intent.action.SHARE_V6"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    new-instance v4, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v5, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_ACK:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v4, v5}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    .line 153
    .local v4, "model":Lcom/baidu/sapi2/share/ShareModel;
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v5}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    .line 154
    .local v1, "currentAccount":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v1, :cond_2a

    .line 155
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 157
    :cond_2a
    invoke-virtual {v4, v1}, Lcom/baidu/sapi2/share/ShareModel;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 158
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v6}, Lcom/baidu/sapi2/d;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v6}, Lcom/baidu/sapi2/d;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 161
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    goto :goto_4f

    .line 164
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_64
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    sget-object v6, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-static {v5, v6, v4}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 165
    const-string v5, "LOGIN_SHARE_MODEL"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v5}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8d

    .line 167
    const-string v5, "RELOGIN_CREDENTIALS"

    sget-object v6, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    sget-object v7, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/d;

    invoke-virtual {v7}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_8d
    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v6

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_a7

    .line 173
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    :cond_a7
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    const-string v6, "com.baidu.permission.SHARE"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 42
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->f:Landroid/os/Handler;

    if-nez v5, :cond_15

    .line 43
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->f:Landroid/os/Handler;

    .line 45
    :cond_15
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->f:Landroid/os/Handler;

    new-instance v6, Lcom/baidu/sapi2/share/ShareReceiver$c;

    invoke-direct {v6, p0}, Lcom/baidu/sapi2/share/ShareReceiver$c;-><init>(Lcom/baidu/sapi2/share/ShareReceiver;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_1f
    sget-boolean v5, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    if-nez v5, :cond_26

    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/share/ShareReceiver;->a(Landroid/content/Context;)V

    .line 57
    :cond_26
    sget-boolean v5, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    if-eqz v5, :cond_30

    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    sget-object v6, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v5, v6, :cond_31

    .line 99
    :cond_30
    :goto_30
    return-void

    .line 61
    :cond_31
    :try_start_31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    const-string v5, "baidu.intent.action.SHARE_V6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 63
    const-string v5, "LOGIN_SHARE_MODEL"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/share/ShareModel;

    .line 64
    .local v4, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    if-eqz v4, :cond_30

    .line 68
    invoke-virtual {v4}, Lcom/baidu/sapi2/share/ShareModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "from":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 73
    :cond_5f
    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    if-eqz v5, :cond_85

    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    instance-of v5, v5, Lcom/baidu/sapi2/utils/enums/Domain;

    if-eqz v5, :cond_85

    .line 75
    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/utils/enums/Domain;

    .line 76
    .local v2, "env":Lcom/baidu/sapi2/utils/enums/Domain;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    if-ne v2, v5, :cond_30

    .line 80
    .end local v2    # "env":Lcom/baidu/sapi2/utils/enums/Domain;
    :cond_85
    sget-object v5, Lcom/baidu/sapi2/share/ShareReceiver;->g:Landroid/os/Handler;

    new-instance v6, Lcom/baidu/sapi2/share/ShareReceiver$a;

    invoke-direct {v6, p0, p1, p2, v4}, Lcom/baidu/sapi2/share/ShareReceiver$a;-><init>(Lcom/baidu/sapi2/share/ShareReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_8f} :catch_90

    goto :goto_30

    .line 96
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "from":Ljava/lang/String;
    .end local v4    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_90
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_30
.end method
