.class public final Lcom/baidu/sapi2/share/b;
.super Ljava/lang/Object;
.source "SapiShareClient.java"


# static fields
.field static final a:Ljava/lang/String; = "LOGIN_SHARE_MODEL"

.field static final b:Ljava/lang/String; = "RELOGIN_CREDENTIALS"

.field static final c:Ljava/lang/String; = "RUNTIME_ENVIRONMENT"

.field static final d:Ljava/lang/String; = "baidu.intent.action.SHARE_V6"

.field static final e:Ljava/lang/String; = "baidu.intent.action.account.SHARE_SERVICE"

.field static final f:Ljava/lang/String; = "com.baidu.permission.SHARE"

.field private static g:Lcom/baidu/sapi2/SapiConfiguration;

.field private static h:Lcom/baidu/sapi2/d;

.field private static final i:Lcom/baidu/sapi2/share/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcom/baidu/sapi2/share/b;

    invoke-direct {v0}, Lcom/baidu/sapi2/share/b;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/share/b;->i:Lcom/baidu/sapi2/share/b;

    .line 52
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    .line 53
    sget-object v0, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/baidu/sapi2/share/ShareModel;)Landroid/os/Parcel;
    .registers 6
    .param p0, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 346
    .local v1, "data":Landroid/os/Parcel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v3, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 348
    const-string v2, "LOGIN_SHARE_MODEL"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    sget-object v2, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v2}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 350
    const-string v2, "RELOGIN_CREDENTIALS"

    sget-object v3, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v4, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v4}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_3a
    const-string v2, "RUNTIME_ENVIRONMENT"

    sget-object v3, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 354
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 356
    return-object v1
.end method

.method public static a()Lcom/baidu/sapi2/share/b;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/sapi2/share/b;->i:Lcom/baidu/sapi2/share/b;

    return-object v0
.end method

.method static a(Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 330
    :try_start_0
    sget-object v1, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 331
    const-string v1, "LOGIN_SHARE_MODEL"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    sget-object v1, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v1}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 333
    const-string v1, "RELOGIN_CREDENTIALS"

    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v3, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    :cond_31
    const-string v1, "RUNTIME_ENVIRONMENT"

    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    sget-object v1, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const-string v2, "com.baidu.permission.SHARE"

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_44

    .line 341
    :goto_43
    return-void

    .line 338
    :catch_44
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method static synthetic a(Landroid/os/Parcel;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/baidu/sapi2/share/b;->b(Landroid/os/Parcel;)V

    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 226
    sget-object v0, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v0}, Lcom/baidu/sapi2/d;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 227
    sget-object v0, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eq v0, v1, :cond_15

    .line 228
    invoke-static {}, Lcom/baidu/sapi2/share/b;->e()V

    .line 230
    :cond_15
    invoke-static {}, Lcom/baidu/sapi2/share/b;->f()V

    .line 237
    :cond_18
    :goto_18
    return-void

    .line 232
    :cond_19
    sget-object v0, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v0}, Lcom/baidu/sapi2/d;->h()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_18

    .line 234
    invoke-static {}, Lcom/baidu/sapi2/share/b;->e()V

    goto :goto_18
.end method

.method private static b(Landroid/os/Parcel;)V
    .registers 5

    .prologue
    .line 296
    if-nez p0, :cond_3

    .line 308
    :goto_2
    return-void

    .line 300
    :cond_3
    :try_start_3
    const-class v0, Lcom/baidu/sapi2/share/ShareModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 301
    const-string v0, "LOGIN_SHARE_MODEL"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/ShareModel;

    .line 303
    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const-string v3, "RELOGIN_CREDENTIALS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/sapi2/share/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    sget-object v1, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_2

    .line 305
    :catch_30
    move-exception v0

    .line 306
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic c()Lcom/baidu/sapi2/SapiConfiguration;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method static synthetic d()Lcom/baidu/sapi2/d;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    return-object v0
.end method

.method private static e()V
    .registers 3

    .prologue
    .line 241
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SyncThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/baidu/sapi2/share/b$c;

    invoke-direct {v2, v0}, Lcom/baidu/sapi2/share/b$c;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method private static f()V
    .registers 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/sapi2/share/b$d;

    invoke-direct {v1}, Lcom/baidu/sapi2/share/b$d;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 325
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 3
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;Z)V

    .line 70
    return-void
.end method

.method public a(Lcom/baidu/sapi2/SapiAccount;Z)V
    .registers 7
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;
    .param p2, "loginSelf"    # Z

    .prologue
    .line 80
    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 150
    :cond_6
    :goto_6
    return-void

    .line 84
    :cond_7
    iget-object v2, p1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 85
    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 87
    :cond_19
    if-eqz p2, :cond_34

    .line 88
    sget-object v2, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 89
    sget-object v2, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/d;->c(Lcom/baidu/sapi2/SapiAccount;)V

    .line 90
    sget-object v2, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/d;->d(Lcom/baidu/sapi2/SapiAccount;)V

    .line 91
    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    sget-object v3, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eq v2, v3, :cond_6

    .line 96
    :cond_34
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ValidateThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/baidu/sapi2/share/b$a;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/baidu/sapi2/share/b$a;-><init>(Lcom/baidu/sapi2/share/b;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public b(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 6
    .param p1, "currentAccount"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 157
    if-eqz p1, :cond_c

    sget-object v2, Lcom/baidu/sapi2/share/b;->g:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    sget-object v3, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v2, v3, :cond_d

    .line 219
    :cond_c
    :goto_c
    return-void

    .line 161
    :cond_d
    sget-object v2, Lcom/baidu/sapi2/share/b;->h:Lcom/baidu/sapi2/d;

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/d;->d(Lcom/baidu/sapi2/SapiAccount;)V

    .line 163
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "InvalidateThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/baidu/sapi2/share/b$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/sapi2/share/b$b;-><init>(Lcom/baidu/sapi2/share/b;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method
