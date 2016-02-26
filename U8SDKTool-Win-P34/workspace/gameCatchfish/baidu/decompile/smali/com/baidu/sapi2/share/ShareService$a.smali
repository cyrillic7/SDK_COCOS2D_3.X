.class Lcom/baidu/sapi2/share/ShareService$a;
.super Landroid/os/Binder;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/share/ShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/ShareService;


# direct methods
.method private constructor <init>(Lcom/baidu/sapi2/share/ShareService;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/sapi2/share/ShareService;Lcom/baidu/sapi2/share/ShareService$b;)V
    .registers 3
    .param p1, "x0"    # Lcom/baidu/sapi2/share/ShareService;
    .param p2, "x1"    # Lcom/baidu/sapi2/share/ShareService$b;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/share/ShareService$a;-><init>(Lcom/baidu/sapi2/share/ShareService;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-static {v0}, Lcom/baidu/sapi2/share/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 62
    const/4 v0, 0x0

    .line 119
    :goto_a
    return v0

    .line 64
    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 65
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-static {v0}, Lcom/baidu/sapi2/share/ShareService;->a(Lcom/baidu/sapi2/share/ShareService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_27

    .line 66
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/baidu/sapi2/share/ShareService;->a(Lcom/baidu/sapi2/share/ShareService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 68
    :cond_27
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-static {v0}, Lcom/baidu/sapi2/share/ShareService;->a(Lcom/baidu/sapi2/share/ShareService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/sapi2/share/ShareService$a$a;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/share/ShareService$a$a;-><init>(Lcom/baidu/sapi2/share/ShareService$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_35
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->a()Z

    move-result v0

    if-nez v0, :cond_42

    .line 78
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/share/ShareService;->a(Landroid/content/Context;)V

    .line 80
    :cond_42
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_52

    :cond_50
    move v0, v2

    .line 81
    goto :goto_a

    .line 84
    :cond_52
    :try_start_52
    const-class v0, Lcom/baidu/sapi2/share/ShareModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 85
    const-string v0, "LOGIN_SHARE_MODEL"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/ShareModel;

    .line 86
    if-nez v0, :cond_68

    move v0, v2

    .line 87
    goto :goto_a

    .line 94
    :cond_68
    const-string v1, "RUNTIME_ENVIRONMENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_91

    const-string v1, "RUNTIME_ENVIRONMENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/baidu/sapi2/utils/enums/Domain;

    if-eqz v1, :cond_91

    .line 96
    const-string v1, "RUNTIME_ENVIRONMENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/utils/enums/Domain;

    .line 97
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    if-eq v1, v4, :cond_91

    move v0, v2

    .line 98
    goto/16 :goto_a

    .line 102
    :cond_91
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->c()Landroid/content/Context;

    move-result-object v1

    const-string v4, "RELOGIN_CREDENTIALS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/sapi2/share/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/baidu/sapi2/share/ShareService$b;->a:[I

    invoke-virtual {v0}, Lcom/baidu/sapi2/share/ShareModel;->b()Lcom/baidu/sapi2/share/ShareEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/share/ShareEvent;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_d0

    :goto_ad
    move v0, v2

    .line 119
    goto/16 :goto_a

    .line 105
    :pswitch_b0
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_bb} :catch_bc

    goto :goto_ad

    .line 116
    :catch_bc
    move-exception v0

    .line 117
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_ad

    .line 108
    :pswitch_c1
    :try_start_c1
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_ad

    .line 111
    :pswitch_c9
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-virtual {v0, p3}, Lcom/baidu/sapi2/share/ShareService;->a(Landroid/os/Parcel;)V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_ce} :catch_bc

    goto :goto_ad

    .line 103
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_c1
        :pswitch_c9
    .end packed-switch
.end method
